# Silent Dropping of Non-Existent Columns in R Subsetting

This repository demonstrates a subtle but potentially problematic behavior in R when subsetting data frames using character vectors containing non-existent column names.  R silently drops these columns without warning, which can lead to errors that are difficult to trace.  The `bug.r` file contains code that exhibits this issue, while `bugSolution.r` demonstrates how to check for and handle this situation appropriately.

## The Problem

In R, if you attempt to subset a data frame using a character vector that includes column names that do not exist, R will simply ignore those names and return a data frame containing only the existing columns.  This behavior might not be immediately obvious, resulting in data loss and unexpected results.

## The Solution

The best way to handle this is to explicitly check if all columns specified exist before performing the subsetting operation.  The `bugSolution.r` file illustrates how to do this using the `%in%` operator and error handling to prevent such issues.  This ensures that you're aware of any discrepancies between the columns you request and the available columns in the data frame.