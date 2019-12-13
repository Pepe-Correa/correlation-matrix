corr_matrix <- function(data, digits = 3, ...){
  
  # function to get correlation coefficient, 'r' (%), with significant codes
  
  # Arguments:
  # - data: a numerical data.frame
  # - digits: number of digits in correlation coefficient ('r') 
  
  # Correlation between two variables
  corr_scalar <- function(x, y, data, digits = 3, ...){
    result <- cor.test(data[[x]], data[[y]])
    p.value <- result$p.value
    r <- round(100*result$estimate, digits)[[1]]
    if(p.value > 0.05){p.value = "n.s."}else
      if(p.value <= 0.05 & p.value >= 0.01){p.value = "*"}else
        if(p.value < 0.01 & p.value >= 0.001){p.value = "**"}else
          if(p.value < 0.001){p.value = "***"}
    return(paste(r, p.value))
  }
  
  # Column-wise application of 'corr_scalar' on data
  xi <- names(data)
  xj <- names(data)
  m <- outer(
    xi, xj, 
    FUN = Vectorize(
      function(x, y){
        corr_scalar(x, y, data, digits)
      }
    )
  )
  rownames(m) <- xi
  colnames(m) <- xj
  m[upper.tri(m, diag = FALSE)] <- ""
  diag(m) <- "-"
  m <- m[-1, -ncol(m)]
  
  # Export results (list object):
  sig_cod <- "Signif. codes: <0.001 '***'; 0.001-0.01 '**'; 0.01-0.05 '*'; > 0.05 'n.s.' (non-significant)" 
  l <- list()
  l[[1]] <- sig_cod
  l[[2]] <- m
  names(l) <- c("Significance codes (p values)", "Correlation matrix (r)")
  return(l)
}
