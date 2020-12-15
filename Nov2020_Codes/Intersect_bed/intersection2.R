panel=read.delim("panel.bed", header=F)
wh_gene=read.delim("352_Whole_Gene.bed", header = F)
names(wh_gene)=c("V4", "V5", "V6", "V7")

comb=data.frame()

for (i in 1:length(panel$V2)){
  p1=panel$V2[i]
  p2=panel$V3[i]
  
  for (j in 1:length(wh_gene$V5)){
    w1=wh_gene$V5[j]
    w2=wh_gene$V6[j]
    
    if (p1>w1 & p2<w2){
      comb1=cbind(panel[i,],wh_gene[j,])
      comb=rbind(comb,comb1)}
    
     print(paste(i,"--",j))
  }
}
