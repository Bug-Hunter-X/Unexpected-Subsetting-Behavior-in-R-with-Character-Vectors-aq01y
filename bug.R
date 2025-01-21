```r
# This code attempts to subset a data frame using a character vector, but it fails
# due to the way R handles character vectors compared to factor vectors.

df <- data.frame(col1 = c("A", "B", "C", "A"), col2 = 1:4)

# Incorrect subsetting
# Attempting to subset by character vector, without explicitly converting it to a factor
subset_df <- df[df$col1 == "A", ]

# Correct subsetting
# Explicitly converting the character vector to a factor
correct_subset_df <- df[as.factor(df$col1) == "A", ]
```