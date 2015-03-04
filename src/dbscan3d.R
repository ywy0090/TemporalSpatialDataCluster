library(rgl)#plot3d
library(fpc)#dbscan
library(cluster)#clusplot
norm3d <- cbind(rnorm(1000),rnorm(1000),rnorm(1000))
db <- dbscan(norm3d, eps=0.3)
db$cluster <- db$cluster +30
plot3d(norm3d,col=db$cluster,main="DBSCAN clustering")
clusplot(norm3d,db$cluster)
