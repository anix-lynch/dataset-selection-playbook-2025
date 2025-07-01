#!/bin/bash

# 🎯 Smart dataset finder for 2025 AI projects
# Usage: ./find_datasets.sh "time series"

if [ -z "$1" ]; then
    echo "Usage: $0 'search_term'"
    echo "Examples:"
    echo "  $0 'time series'"
    echo "  $0 'nlp text'"
    echo "  $0 'ecommerce'"
    exit 1
fi

SEARCH_TERM="$1"
OUTPUT_FILE="datasets_${SEARCH_TERM// /_}.csv"

echo "🔍 Searching for: $SEARCH_TERM"
echo "📁 Output: $OUTPUT_FILE"

# Search Kaggle datasets
echo "📊 Fetching from Kaggle..."
kaggle datasets list --search "$SEARCH_TERM" --sort-by votes --csv > "$OUTPUT_FILE"

# Count results
RESULT_COUNT=$(wc -l < "$OUTPUT_FILE")
RESULT_COUNT=$((RESULT_COUNT - 1))  # Subtract header

echo "✅ Found $RESULT_COUNT datasets"
echo "📋 Results saved to: $OUTPUT_FILE"

# Show top 5 results
echo ""
echo "🎯 Top 5 Results:"
echo "================="
head -6 "$OUTPUT_FILE" | tail -5 | while IFS=',' read -r ref title size lastUpdated downloadCount voteCount usabilityRating; do
    echo "📌 $ref"
    echo "   Title: $title"
    echo "   Votes: $voteCount | Downloads: $downloadCount | Usability: $usabilityRating"
    echo ""
done

echo "💡 Next steps:"
echo "   1. Review full results: cat $OUTPUT_FILE"
echo "   2. Filter by quality: ./quality_filter.sh $OUTPUT_FILE"
echo "   3. Download chosen dataset: kaggle datasets download DATASET_REF"