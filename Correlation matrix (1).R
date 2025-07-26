install.packages("ggcorrplot")
library(ggcorrplot)


# Compute a correlation matrix
data(mtcars)
corr <- round(cor(mtcars), 1)
head(corr[, 1:6])

# Compute a matrix of correlation p-values
p.mat <- cor_pmat(mtcars)
head(p.mat[, 1:4])

# Visualize the correlation matrix
# --------------------------------
# method = "square" (default)
ggcorrplot(corr)

# Add correlation coefficients
# --------------------------------
# argument lab = TRUE
ggcorrplot(corr, hc.order = TRUE, type = "lower",
           lab = TRUE)