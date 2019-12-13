# Correlation matrix with significant code
Function to get a table of correlation coefficients, *r* (%), between a set of variables with significant codes (*p* values).

```R
source(
corr_matrix(mtcars)
```

To export the results:
```R
result <- corr_matrix(mtcars)[[2]]
write.csv(x = result, file = "result.csv")
```
