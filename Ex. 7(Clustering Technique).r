library(datasets)
head(iris)
library(ggplot2)
ggplot(iris, aes(Petal.Length, Petal.Width, color = Species))+geom_point()
set.seed(20)
irisCluster <- kmeans(iris[, 3:4], 3, nstart = 20) 
irisCluster$cluster
table(irisCluster$cluster, iris$Species)
