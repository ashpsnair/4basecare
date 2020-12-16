import pandas as pd
bam=pd.read_table("C:/Users/ash24/Downloads/IN-423-TJZD-F2-RE.bam",names=["chr", "strt", "end", "v1","v2"])
for i in range(len(bam)):
    if bam.strt[i]>bam.end[i]:
        start=bam.strt[i]
        end= bam.end[i]
        bam.strt[i]=end
        bam.end[i]=start

bam.to_csv("C:/Users/ash24/Downloads/IN-423-TJZD-F2-RE.output.txt", sep="\t",index=False, header=False)
