library(gdata)
dir= "C:/Users/ash24/Downloads/vcf_db_after_lockdown/"
out=paste0(dir,"db_101-116.csv")
files=list.files(dir,"_db.txt")
db_df=data.frame()
final=data.frame("remove")
for (i in 101:116){
  name=strsplit(files[i],".hard")[[1]][1]
  data=read.delim(paste0(dir,files[i]),header = F)
  db_df=rbind(files[i],name,data)
  final=cbindX(final,db_df)
  print(i)
  }

final=final[-1]
write.csv(final,out)
