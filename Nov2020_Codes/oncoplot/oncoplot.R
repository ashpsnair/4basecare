
#load the maftools package

library(maftools)


#import all the datasets

NG_138 = data.file <- '/home/basecare/Documents/vcfs/NG_138trimmedNG138.hard-filtered.vcf.avinput.hg19_multianno.txt'
NG_224 = data.file <- '/home/basecare/Documents/vcfs/NG_224trimmedNG224.hard-filtered.vcf.avinput.hg19_multianno.txt'
NG_248 = data.file <- '/home/basecare/Documents/vcfs/NG_248trimmedNG248.hard-filtered.vcf.avinput.hg19_multianno.txt'
NG_42 = data.file <- '/home/basecare/Documents/vcfs/NG_42.vcf.avinput.hg19_multianno.txt'
NG_85 = data.file <- '/home/basecare/Documents/vcfs/NG_85trimmedNG85.hard-filtered.vcf.avinput.hg19_multianno.txt'
PT10_2 = data.file <- '/home/basecare/Documents/vcfs/PT10_2trimmedPT10.hard-filtered.vcf.avinput.hg19_multianno.txt'
PT11 = data.file <- '/home/basecare/Documents/vcfs/PT11trimmedPT11.hard-filtered.vcf.avinput.hg19_multianno.txt'
PT13 = data.file <- '/home/basecare/Documents/vcfs/PT13trimmedPT13.hard-filtered.vcf.avinput.hg19_multianno.txt'
PT14 = data.file <- '/home/basecare/Documents/vcfs/PT14trimmedPT14.hard-filtered.vcf.avinput.hg19_multianno.txt'
PT16 = data.file <- '/home/basecare/Documents/vcfs/PT16trimmedPT16.hard-filtered.vcf.avinput.hg19_multianno.txt'
PT19_2 = data.file <- '/home/basecare/Documents/vcfs/PT19_2trimmedPT192.hard-filtered.vcf.avinput.hg19_multianno.txt'
PT20_1 = data.file <- '/home/basecare/Documents/vcfs/PT20_1trimmedPT201.hard-filtered.vcf.avinput.hg19_multianno.txt'
PT21 = data.file <- '/home/basecare/Documents/vcfs/PT21trimmedPT21.hard-filtered.vcf.avinput.hg19_multianno.txt'
PT23 = data.file <- '/home/basecare/Documents/vcfs/PT23trimmedPT23.hard-filtered.vcf.avinput.hg19_multianno.txt'
PT28 = data.file <- '/home/basecare/Documents/vcfs/PT28trimmedPT28.hard-filtered.vcf.avinput.hg19_multianno.txt'
PT29 = data.file <- '/home/basecare/Documents/vcfs/PT29trimmedPT29.hard-filtered.vcf.avinput.hg19_multianno.txt'
PT2 = data.file <- '/home/basecare/Documents/vcfs/PT2trimmedPT2.hard-filtered.vcf.avinput.hg19_multianno.txt'
PT30 = data.file <- '/home/basecare/Documents/vcfs/PT30trimmedPT30.hard-filtered.vcf.avinput.hg19_multianno.txt'
PT31 = data.file <- '/home/basecare/Documents/vcfs/PT31trimmedPT31.hard-filtered.vcf.avinput.hg19_multianno.txt'
PT33 = data.file <- '/home/basecare/Documents/vcfs/PT33trimmedPT33.hard-filtered.vcf.avinput.hg19_multianno.txt'
PT34 = data.file <- '/home/basecare/Documents/vcfs/PT34trimmedPT34.hard-filtered.vcf.avinput.hg19_multianno.txt'
PT35 = data.file <- '/home/basecare/Documents/vcfs/PT35trimmedPT35.hard-filtered.vcf.avinput.hg19_multianno.txt'
PT38 = data.file <- '/home/basecare/Documents/vcfs/PT38trimmedPT38.hard-filtered.vcf.avinput.hg19_multianno.txt'
PT39 = data.file <- '/home/basecare/Documents/vcfs/PT39trimmedPT39.hard-filtered.vcf.avinput.hg19_multianno.txt'
PT3 = data.file <- '/home/basecare/Documents/vcfs/PT3trimmedPT3.hard-filtered.vcf.avinput.hg19_multianno.txt'
PT42 = data.file <- '/home/basecare/Documents/vcfs/PT42trimmedPT42.hard-filtered.vcf.avinput.hg19_multianno.txt'
PT43 = data.file <- '/home/basecare/Documents/vcfs/PT43trimmedPT43.hard-filtered.vcf.avinput.hg19_multianno.txt'
PT44 = data.file <- '/home/basecare/Documents/vcfs/PT44trimmedPT44.hard-filtered.vcf.avinput.hg19_multianno.txt'
PT4 = data.file <- '/home/basecare/Documents/vcfs/PT4trimmedPT4.hard-filtered.vcf.avinput.hg19_multianno.txt'
PT5 = data.file <- '/home/basecare/Documents/vcfs/PT5trimmedPT5.hard-filtered.vcf.avinput.hg19_multianno.txt'
PT6 = data.file <- '/home/basecare/Documents/vcfs/PT6trimmedPT6.hard-filtered.vcf.avinput.hg19_multianno.txt'
PT8 = data.file <- '/home/basecare/Documents/vcfs/PT8trimmedPT8.hard-filtered.vcf.avinput.hg19_multianno.txt'
PT9 = data.file <- '/home/basecare/Documents/vcfs/PT9trimmedPT9.hard-filtered.vcf.avinput.hg19_multianno.txt'
PT7_1 = data.file <- '/home/basecare/Documents/vcfs/PT7_1trimmedPT7.hard-filtered.vcf.avinput.hg19_multianno.txt'


#covert datasets to maf

NG_138.maf = annovarToMaf(annovar = NG_138, refBuild = 'hg19', table = 'refGene')
NG_224.maf = annovarToMaf(annovar = NG_224, refBuild = 'hg19', table = 'refGene')
NG_248.maf = annovarToMaf(annovar = NG_248, refBuild = 'hg19', table = 'refGene')
NG_42.maf = annovarToMaf(annovar = NG_42, refBuild = 'hg19', table = 'refGene')
NG_85.maf = annovarToMaf(annovar = NG_85, refBuild = 'hg19', table = 'refGene')
PT10.maf = annovarToMaf(annovar = PT10_2, refBuild = 'hg19', table = 'refGene')
PT11.maf = annovarToMaf(annovar = PT11, refBuild = 'hg19', table = 'refGene')
PT13.maf = annovarToMaf(annovar = PT13, refBuild = 'hg19', table = 'refGene')
PT14.maf = annovarToMaf(annovar = PT14, refBuild = 'hg19', table = 'refGene')
PT16.maf = annovarToMaf(annovar = PT16, refBuild = 'hg19', table = 'refGene')
PT19.maf = annovarToMaf(annovar = PT19_2, refBuild = 'hg19', table = 'refGene')
PT20.maf = annovarToMaf(annovar = PT20_1, refBuild = 'hg19', table = 'refGene')
PT21.maf = annovarToMaf(annovar = PT21, refBuild = 'hg19', table = 'refGene')
PT23.maf = annovarToMaf(annovar = PT23, refBuild = 'hg19', table = 'refGene')
PT28.maf = annovarToMaf(annovar = PT28, refBuild = 'hg19', table = 'refGene')
PT29.maf = annovarToMaf(annovar = PT29, refBuild = 'hg19', table = 'refGene')
PT2.maf = annovarToMaf(annovar = PT2, refBuild = 'hg19', table = 'refGene')
PT30.maf = annovarToMaf(annovar = PT30, refBuild = 'hg19', table = 'refGene')
PT31.maf = annovarToMaf(annovar = PT31, refBuild = 'hg19', table = 'refGene')
PT33.maf = annovarToMaf(annovar = PT33, refBuild = 'hg19', table = 'refGene')
PT34.maf = annovarToMaf(annovar = PT34, refBuild = 'hg19', table = 'refGene')
PT35.maf = annovarToMaf(annovar = PT35, refBuild = 'hg19', table = 'refGene')
PT38.maf = annovarToMaf(annovar = PT38, refBuild = 'hg19', table = 'refGene')
PT39.maf = annovarToMaf(annovar = PT39, refBuild = 'hg19', table = 'refGene')
PT3.maf = annovarToMaf(annovar = PT3, refBuild = 'hg19', table = 'refGene')
PT42.maf = annovarToMaf(annovar = PT42, refBuild = 'hg19', table = 'refGene')
PT43.maf = annovarToMaf(annovar = PT43, refBuild = 'hg19', table = 'refGene')
PT44.maf = annovarToMaf(annovar = PT44, refBuild = 'hg19', table = 'refGene')
PT4.maf = annovarToMaf(annovar = PT4, refBuild = 'hg19', table = 'refGene')
PT5.maf = annovarToMaf(annovar = PT5, refBuild = 'hg19', table = 'refGene')
PT6.maf = annovarToMaf(annovar = PT6, refBuild = 'hg19', table = 'refGene')
PT8.maf = annovarToMaf(annovar = PT8, refBuild = 'hg19', table = 'refGene')
PT9.maf = annovarToMaf(annovar = PT9, refBuild = 'hg19', table = 'refGene')
PT7.maf = annovarToMaf(annovar = PT7_1, refBuild = 'hg19', table = 'refGene')


#combine all the mafs

combined <- rbind (NG_138.maf,NG_224.maf,NG_248.maf,NG_42.maf,NG_85.maf,PT10.maf,PT11.maf,PT13.maf,PT14.maf,PT16.maf,PT19.maf,PT20.maf,PT21.maf,PT23.maf,PT28.maf,PT29.maf,PT2.maf,PT30.maf,PT31.maf,PT33.maf,PT34.maf,PT35.maf,PT38.maf,PT39.maf,PT3.maf,PT42.maf,PT43.maf,PT44.maf,PT4.maf,PT5.maf,PT6.maf,PT8.maf,PT9.maf,PT7.maf)


#read the mafs

samples = read.maf(maf = combined)


#plot the summary

plotmafSummary(maf = samples, rmOutlier = TRUE, addStat = 'median', dashboard = TRUE, titvRaw = FALSE)


#plot top 10 mutated genes

oncoplot(maf = samples, top = 10)
