import pandas as pd
import os
import re
path="C:/Users/ash24/Downloads/cohort"

files = os.listdir(path)
tmb_df= pd.DataFrame(columns=["sample","variants","tmb_v7","tmb_illumina"])

for s in files:
   sample=s
   file_name= path+"/"+s
   file= pd.read_table(file_name)
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
    
   uni=len(df.VID.unique())
   tmb_v7=uni/49
   tmb_illumina=uni/45
   tmb_dflen=len(tmb_df)
   row=[sample,uni,tmb_v7,tmb_illumina]
   tmb_df.loc[tmb_dflen]= row
   tmb_df.append(row)
   print(row)
    

