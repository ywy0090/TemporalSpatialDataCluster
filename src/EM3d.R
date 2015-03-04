library("mclust")
norm3d <- cbind(rnorm(1000),rnorm(1000),rnorm(1000))
m <- Mclust(norm3d, G=3) #G is cluster number
plot3d(norm3d,col=m$classification,main="EM clustering")
plot(m)
