
sdens <- function(a, b, c, d, e, f){
lab <- c(rep('Norm A', 100), rep('Norm B', 100), rep('Norm C', 100))
data <- c(rnorm(100, a, b), rnorm(100, c, d), rnorm(100, e, f))
df <- data.frame(A = lab, B = data)

library(ggplot2)
ggplot(df, aes(B, fill = A)) + geom_density(alpha = 0.3) +
  theme_bw(base_rect_size = 2) +
  theme(plot.margin = unit(c(rep(1.4,4)), 'cm'),
        axis.text = element_text(size = 12, face = 'bold'))
}

# sdens(1, 0.3, 2, 0.1, 3, 0.2)

