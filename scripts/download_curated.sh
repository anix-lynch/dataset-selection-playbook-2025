#!/bin/bash

# 🎯 Download pre-selected high-value datasets for 2025 projects
# Usage: ./download_curated.sh [category]

CATEGORY=${1:-"all"}
DOWNLOAD_DIR="./datasets"

mkdir -p "$DOWNLOAD_DIR"

echo "🎯 Downloading curated 2025 datasets"
echo "📁 Category: $CATEGORY"
echo "💾 Download directory: $DOWNLOAD_DIR"
echo ""

download_dataset() {
    local dataset=$1
    local category=$2
    
    echo "📥 Downloading $dataset ($category)..."
    cd "$DOWNLOAD_DIR"
    kaggle datasets download "$dataset" --unzip
    cd ..
    echo "✅ Downloaded: $dataset"
    echo ""
}

# Financial/Economic datasets
if [[ "$CATEGORY" == "financial" || "$CATEGORY" == "all" ]]; then
    echo "💰 Financial/Economic Datasets"
    echo "=============================="
    download_dataset "andrewmvd/sp-500-stocks" "financial"
    download_dataset "rohanrao/nifty50-stock-market-data" "financial"
    download_dataset "tsaustin/us-historical-weather" "economic"
fi

# NLP/Text datasets
if [[ "$CATEGORY" == "nlp" || "$CATEGORY" == "all" ]]; then
    echo "📝 NLP/Text Datasets"
    echo "===================="
    download_dataset "chaitanyakck/financial-news-headlines-sentiment" "nlp"
    download_dataset "nickmccullum/chatgpt-conversations" "nlp"
fi

# Time Series datasets
if [[ "$CATEGORY" == "timeseries" || "$CATEGORY" == "all" ]]; then
    echo "📈 Time Series Datasets"
    echo "======================="
    download_dataset "sumanthvrao/daily-climate-time-series-data" "timeseries"
    download_dataset "robikscube/hourly-energy-consumption" "timeseries"
fi

# Customer/Business datasets
if [[ "$CATEGORY" == "business" || "$CATEGORY" == "all" ]]; then
    echo "🏢 Customer/Business Datasets"
    echo "============================="
    download_dataset "olistbr/brazilian-ecommerce" "business"
    download_dataset "ritesh2000/big-mart-sales-data" "business"
fi

echo "🎉 Download complete!"
echo "📂 Check datasets in: $DOWNLOAD_DIR"
echo "💡 Next: Choose one and start building with 2025 techniques!"