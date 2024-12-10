```r
# Improved code to handle non-existent column names in data frame subsetting.

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_select <- c("A", "D", "E")

# Check if all columns exist
if (!all(cols_to_select %in% names(df))) {
  missing_cols <- setdiff(cols_to_select, names(df))
  stop(paste("Error: Columns", paste(missing_cols, collapse = ", "), "do not exist in the data frame."))
}

subset_df <- df[, cols_to_select]
```