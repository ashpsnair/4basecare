whole=read.delim2("C:/Users/ash24/Downloads/whole.bed",header = T)
genes=read.csv("C:/Users/ash24/Downloads/genes.txt",header = F)
final=data.frame()

for (i in 1:length(genes[,1])){
  set1= uni[grep(genes[i,],uni$hg19.kgXref.geneSymbol),]
  final=rbind(final,set1)
  print(i)
}


write.table(final,"intersect1.bed")

genes=read.delim("genes.txt")

fileConn<-file("abc.txt")
writeLines(genes[,1], sep="\|", fileConn)
close(fileConn)
