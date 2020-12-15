import pandas as pd

#cgi json
data=pd.read_json ('C:/Users/ash24/Downloads/cgi.vr.json', lines=True)
columns=data.columns
columns

#cgi extracts
cgi=data.cgi








#oncokb json operations
data=pd.read_json ('C:/Users/ash24/Downloads/oncokb.vr.json', lines=True)
columns=data.columns
columns

oncokb=data['oncokb']
feat_names=data.feature_names

#extracting synonyms from oncokb

df=pd.DataFrame(columns = ["gene","ref+seq","onco","mutation","mut_effect"])

for i in range(len(oncokb)):
      gene=oncokb[i]['biological']['gene'] 
      ref_seq=oncokb[i]['biological']['RefSeq']
      onco=oncokb[i]['biological']['oncogenic']
      mut=feat_names[i]
      mut_effect=oncokb[i]['biological']['mutationEffect']
      to_append=[gene,ref_seq,onco,mut,mut_effect]
      df_length = len(df)
      df.loc[df_length] = to_append
      print(i)
            
df.to_csv('C:/Users/ash24/Downloads/df_hgvs.csv')    
       
