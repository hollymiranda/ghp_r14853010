# Dengue Case Analysis — Taiwan CDC Dataset

## Overview

This repository contains a reproducible data analysis of the `dengue_assignment.csv` dataset,
provided by the Taiwan Centres for Disease Control (CDC). The dataset includes weekly records
of newly reported dengue cases across various counties in Taiwan, spanning from 2004 to 2025.

## Research Question

**How many new dengue cases were reported in 2023?**

## Result

> **Total new dengue cases reported in 2023: [FILL IN AFTER RUNNING SCRIPT]**

*(Run `analysis.py` or `analysis.R` with the dataset in the same folder to reproduce this result.)*

## Repository Structure

```
.
├── analysis.py        # Python analysis script (primary)
├── analysis.R         # R analysis script (alternative)
├── requirements.txt   # Python dependencies
├── .gitignore         # Excludes CSV dataset and build artifacts
└── README.md
```

> ⚠️ The raw dataset (`dengue_assignment.csv`) is excluded from this repository per `.gitignore`.

## How to Reproduce

### Option A — Python

1. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
2. Place `dengue_assignment.csv` in the project root.
3. Run the analysis:
   ```bash
   python analysis.py
   ```

### Option B — R

1. Install dependencies (run once in R console):
   ```r
   install.packages(c("readr", "dplyr"))
   ```
2. Place `dengue_assignment.csv` in the project root.
3. Run the analysis:
   ```r
   source("analysis.R")
   ```

## Data Source

Taiwan Centers for Disease Control — Open Data Platform  
[https://www.cdc.gov.tw](https://www.cdc.gov.tw)
