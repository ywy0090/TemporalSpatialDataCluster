vol=40000
sink("output.txt")

for(i in 1:vol)
{
  t=runif(1,min=0,max=2015)
  x=runif(1,min=0,max=10000)
  y=runif(1,min=0,max=10000)
  string = sprintf("%d,%f %f %f\n",i,t,x,y)
  cat(string)
}
sink()
