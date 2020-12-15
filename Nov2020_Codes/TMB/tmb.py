# -*- coding: utf-8 -*-
import pandas as pd
import re
file= pd.read_table("C:/Users/ash24/Downloads/IN-423-TJNA-F-TRIMMED.hard-filtered_SMALL_VARIANTS_export.txt")
cons=["missense_variant", "frameshift_variant", "inframe_deletion", "inframe_insertion", "stop_gained", "stop_lost", "start_lost"]
df= pd.DataFrame()
for i in range(len(file)):
        vrf=file["Variant Read Frequency"][i]
        depth=file["Total Read Depth"][i]
        qual=file["Quality"][i]
        if qual>10 and depth>=30 and (0.45>=vrf or vrf>= 0.55) and type(file["Consequence"][i])==str:
            for j in range(len(cons)):
                txt=cons[j] 
                x=re.findall(txt,file["Consequence"][i])
                if x:
                    df_len=len(df)
                    to_append=file.iloc[i]
                    df = df.append(to_append)
sample="IN-423-TJNA-F-TRIMMED.hard-filtered_SMALL_VARIANTS_export.txt"
uni=len(df.VID.unique())
tmb_v7=uni/49
tmb_illumina=uni/45
row=[sample,uni,tmb_v7,tmb_illumina]
