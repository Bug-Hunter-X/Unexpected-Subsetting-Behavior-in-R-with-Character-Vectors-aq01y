# R Subsetting Bug
This repository demonstrates a common but subtle error in R when subsetting data frames using character vectors.  The issue stems from the difference in how R treats character vectors and factor vectors in subsetting operations.  The `bug.R` file shows the incorrect subsetting approach, while `bugSolution.R` provides the correct solution.

## Problem
When subsetting a data frame in R, using a character vector directly for comparison can yield unexpected results, especially when dealing with duplicate entries or string matching. This is because R's comparison operations work slightly differently on character vectors compared to factor vectors, where the factors' internal integer representation causes different behavior. 

## Solution
To avoid this issue, it's essential to explicitly convert your character vector to a factor using `as.factor()` before performing the subsetting.
