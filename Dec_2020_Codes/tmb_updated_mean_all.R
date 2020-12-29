library(dplyr)
#loading the data
tmb_df=read.csv("C:/Users/ash24/Downloads/tmbVI_q5_d20_results.csv")

#creating an empty vector
means_20=c()
mean_all=c()
n=50 #no. of subset to be taken
R=100 #no. of simulations
p=0.2*n #no. top 20% of samples 

#loop for running the simulations
for (i in 1:R){
  random=sample_n(tmb_df,n) #selecting random n samples
  r_tmb=random[,4] #selecting column that has tmb values
  sorted=sort(r_tmb,decreasing = TRUE)[1:p] #selecting top 20%
  mean20=mean(sorted) 
  means_20=append(means_20,mean20)
  meanall= mean(r_tmb)
  mean_all=append(mean_all,meanall)
  
}

mean_all=as.data.frame(mean_all)
mean_all$ID= seq(1:100)

#Dotplot

dotchart(means_20, xlab="mean values", ylab="Index",xlim = c(10,50), main = "Distribution of top 20% means for R=100")
dotchart(mean_all, xlab="mean values", ylab="Index", xlim = c(10,50), main = "Distribution of all means for R=100")

#mean all ggplot
library(ggplot2)
m=mean(mean_all$mean_all)
se=sd(mean_all$mean_all)
p=ggplot(mean_all, aes(x=mean_all,y=ID))+
  geom_point()+
  geom_rug()+
  labs(title="Distribution of means R=100")+
  xlab("Means")+
  ylab("Index")+
  xlim(1,30)+
  geom_vline(xintercept=m, color = "red", size=1)+
  geom_segment(aes(x = m-se, y = 0, xend = m+se, yend = 0),color = "red", size=1)
  




