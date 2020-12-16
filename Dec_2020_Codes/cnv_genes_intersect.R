input_file="C:/Users/ash24/Downloads/trial.bam_CNVs"
genes_file="C:/Users/ash24/Downloads/CNV_36_genes.bed"
output_file="C:/Users/ash24/Downloads/trial.csv"
bam=read.table(input_file)
genes= read.table(genes_file)
df= data.frame("V1"=1, "V2"=2, "V3"=3, "V4"=4, "V5"=5,"gene"=6)

for (i in 1:nrow(genes)){
  g_start=genes[i,2]
  g_end=genes[i,3]
  
  for (j in 1:nrow(bam)){
    c_start=bam[j,2]
    c_end=bam[j,3]
    
    if (g_start<c_start & c_end<g_end & bam[j,1]==genes[i,1]){
      row=data.frame(bam[j,],"gene"=genes[i,4])
      df= rbind(df,row)
    }
    
  }
  
}

df = df[-1,]

write.csv(df,file = output_file)
