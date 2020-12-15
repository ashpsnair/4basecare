panel=read.delim("panel.bed", header=F)
wh_gene=read.delim("352_Whole_Gene.bed", header = F)
names(wh_gene)=c("V4", "V5", "V6", "V7")

comb=data.frame(chrp=character(),p1=numeric(),p2=numeric(),chrw=character(),w1=numeric(),w2=numeric(),gene=character())

for (i in 1:length(panel$V1)){
  sub_wg=data.frame()
  sub_wg=wh_gene[wh_gene$V4==panel$V1[i],]
  
  sub_pan=data.frame()
  sub_pan=panel[panel$V1==panel$V1[i],]
}











for (i in 1:length(panel$V1)){
  sub_wg=data.frame()
  sub_wg=wh_gene[wh_gene$V4==panel$V1[i],]
  
  sub_pan=data.frame()
  sub_pan=panel[panel$V1==panel$V1[i],]
  
  p1=panel$V2[i]
  p2=panel$V3[i]
 for (j in 1:length(sub_wg$V4)){
   
   w1=sub_wg$V5[j]
   w2=sub_wg$V6[j]
   
   if (p1>w1 & p2<w2){
     comb1=cbind(sub_pan[i,],sub_wg[j,])
     comb=rbind(comb,comb1)}
   else {
     comb2=cbind(sub_pan[i,],V4 ="nil",V5="nil",V6="nil",V7="nil")
     comb=rbind(comb,comb2)
   }
   
 }
  print(sub_pan$V1[i])
}


