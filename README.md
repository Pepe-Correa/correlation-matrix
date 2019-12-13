# Correlation matrix with significant code
Function to get a table of correlation coefficients, *r* (%), between a set of variables with significant codes (*p* values).

```R
source("corr_matrix.R")
corr_matrix(mtcars)
```

<table border=1>
<tr> <th>  </th> <th> mpg </th> <th> cyl </th> <th> disp </th> <th> hp </th> <th> drat </th> <th> wt </th> <th> qsec </th> <th> vs </th> <th> am </th> <th> gear </th>  </tr>
  <tr> <td align="right"> cyl </td> <td> -85.216 *** </td> <td> - </td> <td>  </td> <td>  </td> <td>  </td> <td>  </td> <td>  </td> <td>  </td> <td>  </td> <td>  </td> </tr>
  <tr> <td align="right"> disp </td> <td> -84.755 *** </td> <td> 90.203 *** </td> <td> - </td> <td>  </td> <td>  </td> <td>  </td> <td>  </td> <td>  </td> <td>  </td> <td>  </td> </tr>
  <tr> <td align="right"> hp </td> <td> -77.617 *** </td> <td> 83.245 *** </td> <td> 79.095 *** </td> <td> - </td> <td>  </td> <td>  </td> <td>  </td> <td>  </td> <td>  </td> <td>  </td> </tr>
  <tr> <td align="right"> drat </td> <td> 68.117 *** </td> <td> -69.994 *** </td> <td> -71.021 *** </td> <td> -44.876 ** </td> <td> - </td> <td>  </td> <td>  </td> <td>  </td> <td>  </td> <td>  </td> </tr>
  <tr> <td align="right"> wt </td> <td> -86.766 *** </td> <td> 78.25 *** </td> <td> 88.798 *** </td> <td> 65.875 *** </td> <td> -71.244 *** </td> <td> - </td> <td>  </td> <td>  </td> <td>  </td> <td>  </td> </tr>
  <tr> <td align="right"> qsec </td> <td> 41.868 * </td> <td> -59.124 *** </td> <td> -43.37 * </td> <td> -70.822 *** </td> <td> 9.12 n.s. </td> <td> -17.472 n.s. </td> <td> - </td> <td>  </td> <td>  </td> <td>  </td> </tr>
  <tr> <td align="right"> vs </td> <td> 66.404 *** </td> <td> -81.081 *** </td> <td> -71.042 *** </td> <td> -72.31 *** </td> <td> 44.028 * </td> <td> -55.492 *** </td> <td> 74.454 *** </td> <td> - </td> <td>  </td> <td>  </td> </tr>
  <tr> <td align="right"> am </td> <td> 59.983 *** </td> <td> -52.261 ** </td> <td> -59.123 *** </td> <td> -24.32 n.s. </td> <td> 71.271 *** </td> <td> -69.25 *** </td> <td> -22.986 n.s. </td> <td> 16.835 n.s. </td> <td> - </td> <td>  </td> </tr>
  <tr> <td align="right"> gear </td> <td> 48.028 ** </td> <td> -49.269 ** </td> <td> -55.557 *** </td> <td> -12.57 n.s. </td> <td> 69.961 *** </td> <td> -58.329 *** </td> <td> -21.268 n.s. </td> <td> 20.602 n.s. </td> <td> 79.406 *** </td> <td> - </td> </tr>
  <tr> <td align="right"> carb </td> <td> -55.093 ** </td> <td> 52.699 ** </td> <td> 39.498 * </td> <td> 74.981 *** </td> <td> -9.079 n.s. </td> <td> 42.761 * </td> <td> -65.625 *** </td> <td> -56.961 *** </td> <td> 5.753 n.s. </td> <td> 27.407 n.s. </td> </tr>
   </table>


To export results:
```R
result <- corr_matrix(mtcars)[[2]]
write.csv(x = result, file = "result.csv")
```

