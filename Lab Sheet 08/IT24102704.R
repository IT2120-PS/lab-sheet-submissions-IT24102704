#Exercise - IT24102704

getwd()
setwd("C:\\Users\\daham\\Desktop\\pS\\IT24102704\\8")


#importing dataset
data <- read.table("Exercise - LaptopsWeights.txt",header=TRUE)
fix(data)
attach(data) 

#1
popmn <- mean(Weight.kg.) 
popmn
popsd <- sd(Weight.kg.) 
popsd

#2
samples <- c()
samples
n<- c()
n

for(i in 1:25){
  s<- sample(Weight.kg.,6,replace=TRUE)
  samples<- cbind(samples,s)
  n<-c(n,paste('s',i))
}  

colnames(samples)=n
s.means<- apply(samples,2,mean)
s.means
s.sds<- apply(samples,2,sd)
s.sds

#3
samplemean<- mean(s.means)
samplemean
samplesd<-sd(s.sds)
samplesd
