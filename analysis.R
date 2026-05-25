# ============================================================
# Dengue Case Analysis - Taiwan CDC Dataset (2004–2025)
# ============================================================
# External packages used:
library(readr)   # for read_csv (part of tidyverse)
library(dplyr)   # for filter, summarise

# ------------------------------------------------------------
# 1. Load dataset
# ------------------------------------------------------------
df <- read_csv("dengue_assignment.csv")

# ------------------------------------------------------------
# 2. Inspect the data
# ------------------------------------------------------------
cat("Dimensions:", dim(df), "\n")
cat("\nColumn names:\n")
print(colnames(df))
cat("\nFirst few rows:\n")
print(head(df))

# ------------------------------------------------------------
# 3. Calculate total dengue cases in 2023
#    Adjust column names below to match your actual CSV headers.
#
#    Common Taiwan CDC column names:
#      Year  : '發病年份', 'year', 'Year'
#      Cases : '確定病例數', 'cases', 'indigenous_cases'
# ------------------------------------------------------------

# --- Auto-detect columns ---
year_candidates  <- c("發病年份", "year", "Year", "年份", "YEAR")
cases_candidates <- c("確定病例數", "cases", "indigenous_cases",
                      "本土病例", "Cases", "case_count", "病例數")

year_col  <- intersect(year_candidates,  colnames(df))[1]
cases_col <- intersect(cases_candidates, colnames(df))[1]

if (is.na(year_col) | is.na(cases_col)) {
  stop("Could not detect year or cases column. Please update the column names manually.")
}

cat("\nUsing year column  :", year_col, "\n")
cat("Using cases column :", cases_col, "\n")

# ------------------------------------------------------------
# 4. Filter for 2023 and sum
# ------------------------------------------------------------
total_2023 <- df |>
  filter(.data[[year_col]] == 2023) |>
  summarise(total = sum(.data[[cases_col]], na.rm = TRUE)) |>
  pull(total)

cat("\n==================================================\n")
cat("Total new dengue cases reported in 2023:", format(total_2023, big.mark = ","), "\n")
cat("==================================================\n")
