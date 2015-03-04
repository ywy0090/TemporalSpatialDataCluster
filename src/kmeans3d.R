library(rgl) #library for plot3d
library(cluster) #library for clusplot
norm3d <- cbind(rnorm(1000),rnorm(1000),rnorm(1000))
km <- kmeans(norm3d, centers=3, nstart=10)
km$cluster <- km$cluster +30
plot3d(norm3d,col=km$cluster,main="Kmeans clustering")
clusplot(norm3d, km$cluster)
