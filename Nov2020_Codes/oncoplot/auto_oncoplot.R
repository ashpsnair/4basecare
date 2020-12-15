library(maftools)
dir="C:/Users/ash24/Downloads/"
setwd(dir)
files=list.files(pattern = "multianno.txt")
combined=data.frame()
for (i in 1:length(files)){
  name=paste0(strsplit(files[i],".v")[[1]][1],".maf")
  name= annovarToMaf(annovar = files[i], refBuild = 'hg19', table = 'refGene')
  combined=rbind(combined,name)
  }
samples = read.maf(maf = combined)

pdf("plotSummary.pdf")
plotmafSummary(maf = samples, rmOutlier = TRUE, addStat = 'median', dashboard = TRUE, titvRaw = FALSE)
dev.off()

pdf("Oncoplot.pdf")
oncoplot(maf = samples, top = 10)
dev.off()
