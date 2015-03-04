library(rgl)
norm3d <- cbind(rnorm(1000),rnorm(1000),rnorm(1000))
d <- dist(norm3d)
hc <- hclust(d, method="complete")
plot(hc)
cluster_complete <- cutree(hc, k=5) #k is cluster number
plot3d(norm3d,col=cluster_complete,main="Hierarchical clustering")
