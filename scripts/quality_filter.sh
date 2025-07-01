#!/bin/bash

# 🎯 Filter datasets by 2025 hiring quality standards
# Usage: ./quality_filter.sh datasets.csv

if [ -z "$1" ]; then
    echo "Usage: $0 datasets.csv"
    exit 1
fi

INPUT_FILE="$1"
OUTPUT_FILE="quality_${INPUT_FILE}"

echo "🔍 Filtering datasets by quality standards..."
echo "📊 Input: $INPUT_FILE"
echo "📁 Output: $OUTPUT_FILE"

# Quality thresholds for 2025
MIN_VOTES=100
MIN_DOWNLOADS=1000
MIN_USABILITY=0.6

echo "📋 Quality Standards:"
echo "   • Minimum votes: $MIN_VOTES"
echo "   • Minimum downloads: $MIN_DOWNLOADS"
echo "   • Minimum usability: $MIN_USABILITY"
echo ""

# Create header
head -1 "$INPUT_FILE" > "$OUTPUT_FILE"

# Filter datasets (skip header)
tail -n +2 "$INPUT_FILE" | while IFS=',' read -r ref title size lastUpdated downloadCount voteCount usabilityRating; do
    # Remove quotes and convert to numbers
    votes=$(echo $voteCount | tr -d '"')
    downloads=$(echo $downloadCount | tr -d '"')
    usability=$(echo $usabilityRating | tr -d '"')
    
    # Check if values are numbers and meet criteria
    if [[ $votes =~ ^[0-9]+$ ]] && [[ $downloads =~ ^[0-9]+$ ]] && [[ $usability =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
        if (( votes >= MIN_VOTES && downloads >= MIN_DOWNLOADS )) && (( $(echo "$usability >= $MIN_USABILITY" | bc -l) )); then
            echo "$ref,$title,$size,$lastUpdated,$downloadCount,$voteCount,$usabilityRating" >> "$OUTPUT_FILE"
        fi
    fi
done

# Count filtered results
FILTERED_COUNT=$(wc -l < "$OUTPUT_FILE")
FILTERED_COUNT=$((FILTERED_COUNT - 1))  # Subtract header

echo "✅ Quality datasets found: $FILTERED_COUNT"
echo "📋 Results saved to: $OUTPUT_FILE"

if [ $FILTERED_COUNT -gt 0 ]; then
    echo ""
    echo "🎯 Top Quality Matches:"
    echo "======================"
    head -6 "$OUTPUT_FILE" | tail -5 | while IFS=',' read -r ref title size lastUpdated downloadCount voteCount usabilityRating; do
        echo "⭐ $ref"
        echo "   $title"
        echo "   📊 Votes: $voteCount | Downloads: $downloadCount | Usability: $usabilityRating"
        echo ""
    done
else
    echo "⚠️  No datasets meet quality standards. Try:"
    echo "   • Lower thresholds in this script"
    echo "   • Different search terms"
    echo "   • Manual review of original results"
fi

echo "💡 Next: Download with 'kaggle datasets download DATASET_REF'"