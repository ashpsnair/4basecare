library(ggplot2)
library(dplyr)
tmb_df=read.csv("C:/Users/ash24/Downloads/cohort_asian.csv")
#creating an empty vector
stim=data.frame()

n=round((2/3)*nrow(tmb_df)) #no. of subset to be taken
R=100 #no. of simulations

#loop for running the simulations
for (i in 1:R){
  s_stim=data.frame(ID=rep(i,n))
  random=sample_n(tmb_df,n) #selecting random n samples
  r_tmb=random[,3] #selecting column that has tmb values
  s_stim=cbind(s_stim,r_tmb)
  stim=rbind(stim,s_stim)
}

stim$ID=as.factor(stim$ID)


####removing outliers
tmbdf=sort(tmb_df$tmb)[1:(nrow(tmb_df)-1)]
tmbdf=data.frame(tmb=tmbdf)
m=median(tmbdf$tmb)
se= round(sd(tmbdf$tmb),3)

simple_plot_outliers=
  cap=paste0("Abs.Median= ",m, " and sd= ", se)
  ggplot(tmbdf, aes(x=tmb))+
  geom_boxplot()+
  labs(title="Box plot for raw TMB values", caption = cap)+
  ylab("TMB Values")+
  xlim(0,30)+
  ylim(-1,1)+
  coord_flip()

simple_plot=
    cap=paste0("median= ",m, " and sd= ", se)
    ggplot(tmbdf, aes(x=tmb))+
    geom_boxplot(outlier.shape=NA)+
    labs(title="Box plot for raw TMB values", caption = cap)+
    ylab("TMB Values")+
    xlim(0,12)+
    ylim(-1,1)+
    coord_flip() 
  
plot_outliers=
  ggplot(stim, aes(x=ID,y=r_tmb)) + 
  ylim(0,30)+
  geom_boxplot(outlier.colour="red", outlier.size=0.5)+
  labs(title="Box plot for TMB values (R=100)")+
  xlab("Stimulations")+
  ylab("TMB Values")+
  theme(axis.text.x = element_blank(), axis.ticks = element_blank())
  
  

plot=ggplot(stim, aes(x=ID,y=r_tmb)) + 
    ylim(0,12)+
    geom_boxplot(outlier.shape=NA)+
    labs(title="Box plot for TMB values (R=100)")+
    xlab("Stimulations")+
    ylab("TMB Values")+
    theme(axis.text.x = element_blank(), axis.ticks = element_blank())


