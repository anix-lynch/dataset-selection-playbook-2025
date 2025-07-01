# 🎯 Dataset Selection Playbook 2025

> **Stop using toy datasets. Get hired with projects that showcase 2025 AI skills.**

## 🚀 Quick Start

```bash
# Clone this playbook
git clone git@github.com:anix-lynch/dataset-selection-playbook-2025.git
cd dataset-selection-playbook-2025

# Install dependencies 
pip install kaggle

# Configure Kaggle API
kaggle config set -s

# Find your perfect dataset
./scripts/find_datasets.sh "time series"
```

## 🎯 The Problem

❌ **Old approach:** Pick random datasets → Build basic models → Get ignored by hiring managers

✅ **2025 approach:** Strategic dataset selection → Modern techniques → Stand out in interviews

## 🟢 The 6-Step Selection Framework

### 1️⃣ **Relevance to Hiring Skills**
Does this dataset let me showcase core 2025 skills?

**✅ Priority Skills:**
- LLM pipelines & RAG workflows
- Temporal Fusion Transformer
- Embedding search & vector databases
- AutoML & MLOps
- Prompt Engineering
- Synthetic Data generation

**Examples:**
- S&P 500 prices → Temporal Fusion Transformer forecasting
- Text classification → Zero-shot LLM classification
- Customer reviews → RAG-powered analysis

### 2️⃣ **Professional Credibility**
Avoid toy datasets. Choose business-relevant sources.

**✅ Good sources:**
- Financial markets (Yahoo Finance, S&P)
- Government data (Census, Climate)
- E-commerce platforms
- Healthcare research

**❌ Avoid:**
- Iris, Titanic, Wine quality
- Academic toy examples
- Overly simple classification tasks

### 3️⃣ **Size & Usability**
**Target specifications:**
- Size: 1MB - 1GB (loads locally, looks real)
- Kaggle usability score: 0.7+
- Clean enough to start quickly

### 4️⃣ **Popularity Signals**
**Minimum thresholds:**
- 500+ votes on Kaggle
- 10,000+ downloads
- Active discussion threads

### 5️⃣ **Freshness & Topicality**
**Current topics that impress:**
- Post-COVID economic recovery
- LLM/AI adoption trends
- ESG/sustainability metrics
- Remote work patterns
- Crypto/DeFi (if relevant)

### 6️⃣ **Modern Technique Fit**
Can you tell a compelling story using 2025 tools?

**Examples:**
- Time series → PyTorch Forecasting, TFT
- Text → LLM fine-tuning, QLoRA
- Tabular → AutoML, MLflow
- Embeddings → FAISS, ChromaDB

## 🛠️ Automated Search Scripts

### Quick Dataset Discovery
```bash
# Search by category
./scripts/find_datasets.sh "time series"
./scripts/find_datasets.sh "nlp text"
./scripts/find_datasets.sh "ecommerce"
./scripts/find_datasets.sh "financial"

# Filter by quality
./scripts/quality_filter.sh input_datasets.csv
```

### Manual Kaggle Commands
```bash
# Search and sort by popularity
kaggle datasets list --search "time series" --sort-by votes --csv
kaggle datasets list --search "stock market" --sort-by downloads --csv
kaggle datasets list --search "customer behavior" --sort-by votes --csv
```

## 📋 Pre-Selection Checklist

Before choosing any dataset, verify:

- [ ] ✅ Showcases 2025 in-demand skill
- [ ] ✅ Professional/business credibility
- [ ] ✅ Appropriate size (1MB-1GB)
- [ ] ✅ Kaggle usability score 0.7+
- [ ] ✅ 500+ votes or 10K+ downloads
- [ ] ✅ Topic feels current (not 2018 memes)
- [ ] ✅ Can demo modern ML/AI techniques
- [ ] ✅ Tells compelling project story

## 🎯 Curated High-Value Datasets

### **Financial/Economic**
```
andrewmvd/sp-500-stocks
rohanrao/nifty50-stock-market-data
tsaustin/us-historical-weather
```

### **NLP/Text**
```
chaitanyakck/financial-news-headlines-sentiment
nickmccullum/chatgpt-conversations
clmentc/chatgpt-interaction-dataset
```

### **Time Series**
```
sumanthvrao/daily-climate-time-series-data
robikscube/hourly-energy-consumption
snaags/electric-power-consumption
```

### **Customer/Business**
```
olistbr/brazilian-ecommerce
ritesh2000/big-mart-sales-data
shivan118/hranalyticsdata
```

## 🚀 Next Steps

1. **Choose your dataset** using this framework
2. **Plan your modern approach** (LLM, AutoML, MLOps)
3. **Build with 2025 tools** (avoid scikit-learn only)
4. **Document professionally** (README, deployment)
5. **Share strategically** (LinkedIn, portfolio)

## 📚 Related Resources

- [Claude MCP Configs](https://github.com/anix-lynch/claude-mcp-configs)
- [RAG Memory Search](https://github.com/anix-lynch/claude-rag-memory-search)
- [Job Hunt Automation Tools](https://github.com/anix-lynch/)

---

**Remember:** Your dataset choice is your first impression. Make it count. 🎯