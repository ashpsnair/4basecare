input_file="C:/Users/ash24/Downloads/trial.bam_CNVs"
out_rec="C:/Users/ash24/Downloads/IN-423-TJZD-F2-RE.output.txt"
genes_input="C:/Users/ash24/Downloads/CNV_36_genes.bed"
final_output="C:/Users/ash24/Downloads/final_output.bed"

import pandas as pd
bam=pd.read_table(input_file,names=["chr", "c_start", "c_end", "v1","v2"])
for i in range(len(bam)):
    if bam.c_start[i]>bam.c_end[i]:
        start=bam.c_start[i]
        end= bam.c_end[i]
        bam.c_start[i]=end
        bam.c_end[i]=start

bam.to_csv(out_rec, sep="\t",index=False, header=False)
print("No. of modifications: " + str(len(bam[bam.c_start>bam.c_end])))

####### intersection

genes= pd.read_table(genes_input,names=["chr", "g_start", "g_end", "gene"])

df=pd.DataFrame(columns=['chr_no','start','end','predicted_copy_number','consequences','gene'])
for i in range(len(genes)):
    g_start=genes.g_start[i]
    g_end=genes.g_end[i]
    for j in range(len(bam)):
        c_start=bam.c_start[j]
        c_end=bam.c_end[j]
        if (g_start<c_start) & (c_end<g_end):
            df = df.append({'chr_no': bam.iloc[j,0], 'start': str(bam.iloc[j,1]),'end': str(bam.iloc[j,2]),'predicted_copy_number': bam.iloc[j,3], 'consequences': bam.iloc[j,4],'gene':genes.iloc[i,3] }, ignore_index=True)
    
df.to_csv(final_output,sep="\t",index=False)

