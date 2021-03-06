library(dplyr)
#loading the data
tmb_df=read.csv("C:/Users/ash24/Downloads/tmbVI_q5_d20_results.csv")

#creating an empty vector
means=c()
n=50 #no. of subset to be taken
R=500 #no. of simulations
p=0.2*n #no. top 20% of samples 

#loop for running the simulations
for (i in 1:R){
  random=sample_n(tmb_df,n) #selecting random n samples
  r_tmb=random[,4] #selecting column that has tmb values
  sorted=sort(r_tmb,decreasing = TRUE)[1:p] #selecting top 20%
  mean1=mean(sorted) 
  means=append(means,mean1)
}

#plotting the graph
hist(means, main="Distribution of means for R=1000")

#absolute mean values for the R specified 
print(mean(means))

#Dotplot

y=seq(1:500)
dotchart(means)
ggplot(tmb_df, aes(x = tmb_df[,4])) + 
  geom_dotplot()

