library(ggplot2)
data("VADeaths")

df <- as.data.frame(VADeaths)

df_long <- data.frame(
  AgeGroup = rep(rownames(df), times = ncol(df)),
  Category = rep(colnames(df), each = nrow(df)),
  DeathRate = as.vector(as.matrix(df))
)