library(rgl)
norm3d <- cbind(rnorm(1000),rnorm(1000),rnorm(1000))
db <- dbscan(norm3d, eps=0.3)
km <- kmeans(norm3d, centers=3, nstart=10)
km$cluster <- km$cluster +30
plot3d(norm3d,col=km$cluster)
plot3d(norm3d,col=db$cluster)