library(dplyr)
#loading the data
tmb_df=read.csv("C:/Users/ash24/Downloads/tmbVI_q5_d20_results.csv")

#creating an empty vector
thresholds=c()
n=50 #no. of subset to be taken
R=100 #no. of simulations
p=0.2*n #no. top 20% of samples 

#loop for running the simulations
for (i in 1:R){
  random=sample_n(tmb_df,n) #selecting random n samples
  r_tmb=random[,4] #selecting column that has tmb values
  sorted=sort(r_tmb,decreasing = TRUE)[1:p] #selecting top 20%
  threshold1=min(sorted) 
  thresholds=append(thresholds,threshold1)
}

thresholds=as.data.frame(thresholds)
thresholds$sno= seq(1:R)

dotchart(thresholds, xlab="Thresholds", ylab="sno",xlim = c(10,50), main = "Distribution of thresholds of top 20% TMB values")


m=mean(thresholds$thresholds)
se=sd(thresholds$thresholds)
p=ggplot(thresholds, aes(x=thresholds,y=sno))+
  geom_point()+
  geom_rug()+
  labs(title="Distribution of Thresholds R=100")+
  xlab("Thresholds")+
  ylab("Index")+
  xlim(1,30)+
  geom_vline(xintercept=m, color = "red", size=1)+
  geom_segment(aes(x = m-se, y = 0, xend = m+se, yend = 0),color = "red", size=1)




