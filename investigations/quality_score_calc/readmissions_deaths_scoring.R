library(plyr)

rd <- read.csv('C:/Users/Brennan/Downloads/Hospital_Revised_Flatfiles/mydata/readmissions.csv')

##MORT-30-COPD - Use percentiles
mort_30_copd <- rd[rd$Measure.ID =='MORT_30_COPD',]
count(mort_30_copd$Score)
mort_30_copd$Score <- as.numeric(as.character(mort_30_copd$Score))
hist(mort_30_copd$Score)
mort_30_copd$percentile <- 1 - ecdf(mort_30_copd$Score)(mort_30_copd$Score)
hist(mort_30_copd$percentile)

##MORT-30-CABG - Use percentiles
mort_30_cabg <- rd[rd$Measure.ID =='MORT_30_CABG',]
count(mort_30_cabg$Score)
mort_30_cabg$Score <- as.numeric(as.character(mort_30_cabg$Score))
hist(mort_30_cabg$Score)
mort_30_cabg$percentile <- 1 - ecdf(mort_30_cabg$Score)(mort_30_cabg$Score)
hist(mort_30_cabg$percentile)

##MORT-30-AMI - Use percentiles
mort_30_ami <- rd[rd$Measure.ID =='MORT_30_AMI',]
count(mort_30_ami$Score)
mort_30_ami$Score <- as.numeric(as.character(mort_30_ami$Score))
hist(mort_30_ami$Score)
mort_30_ami$percentile <- 1 - ecdf(mort_30_ami$Score)(mort_30_ami$Score)
hist(mort_30_ami$percentile)

##MORT-30-HF - Use percentiles
mort_30_hf <- rd[rd$Measure.ID =='MORT_30_HF',]
count(mort_30_hf$Score)
mort_30_hf$Score <- as.numeric(as.character(mort_30_hf$Score))
hist(mort_30_hf$Score)
mort_30_hf$percentile <- 1 - ecdf(mort_30_hf$Score)(mort_30_hf$Score)
hist(mort_30_hf$percentile)

##MORT-30-PN - Use percentiles
mort_30_pn <- rd[rd$Measure.ID =='MORT_30_PN',]
count(mort_30_pn$Score)
mort_30_pn$Score <- as.numeric(as.character(mort_30_pn$Score))
hist(mort_30_pn$Score)
mort_30_pn$percentile <- 1 - ecdf(mort_30_pn$Score)(mort_30_pn$Score)
hist(mort_30_pn$percentile)

##MORT-30-STK - Use percentiles
mort_30_stk <- rd[rd$Measure.ID =='MORT_30_STK',]
count(mort_30_stk$Score)
mort_30_stk$Score <- as.numeric(as.character(mort_30_stk$Score))
hist(mort_30_stk$Score)
mort_30_stk$percentile <- 1 - ecdf(mort_30_stk$Score)(mort_30_stk$Score)
hist(mort_30_stk$percentile)

##READM-30-AMI - Use percentiles
readm_30_ami <- rd[rd$Measure.ID =='READM_30_AMI',]
count(readm_30_ami$Score)
readm_30_ami$Score <- as.numeric(as.character(readm_30_ami$Score))
hist(readm_30_ami$Score)
readm_30_ami$percentile <- 1 - ecdf(readm_30_ami$Score)(readm_30_ami$Score)
hist(readm_30_ami$percentile)

##READM-30-COPD - Use percentiles
readm_30_copd <- rd[rd$Measure.ID =='READM_30_COPD',]
count(readm_30_copd$Score)
readm_30_copd$Score <- as.numeric(as.character(readm_30_copd$Score))
hist(readm_30_copd$Score)
readm_30_copd$percentile <- 1 - ecdf(readm_30_copd$Score)(readm_30_copd$Score)
hist(readm_30_copd$percentile)

##READM-30-CABG - Use percentiles
readm_30_cabg <- rd[rd$Measure.ID =='READM_30_CABG',]
count(readm_30_cabg$Score)
readm_30_cabg$Score <- as.numeric(as.character(readm_30_cabg$Score))
hist(readm_30_cabg$Score)
readm_30_cabg$percentile <- 1 - ecdf(readm_30_cabg$Score)(readm_30_cabg$Score)
hist(readm_30_cabg$percentile)

##READM-30-HF - Use percentiles
readm_30_hf <- rd[rd$Measure.ID =='READM_30_HF',]
count(readm_30_hf$Score)
readm_30_hf$Score <- as.numeric(as.character(readm_30_hf$Score))
hist(readm_30_hf$Score)
readm_30_hf$percentile <- 1 - ecdf(readm_30_hf$Score)(readm_30_hf$Score)
hist(readm_30_hf$percentile)

##READM-30-PN - Use percentiles
readm_30_pn <- rd[rd$Measure.ID =='READM_30_PN',]
count(readm_30_pn$Score)
readm_30_pn$Score <- as.numeric(as.character(readm_30_pn$Score))
hist(readm_30_pn$Score)
readm_30_pn$percentile <- 1 - ecdf(readm_30_pn$Score)(readm_30_pn$Score)
hist(readm_30_pn$percentile)

##READM-30-HIPKNEE - Use percentiles
readm_30_hipknee <- rd[rd$Measure.ID =='READM_30_HIP_KNEE',]
count(readm_30_hipknee$Score)
readm_30_hipknee$Score <- as.numeric(as.character(readm_30_hipknee$Score))
hist(readm_30_hipknee$Score)
readm_30_hipknee$percentile <- 1 - ecdf(readm_30_hipknee$Score)(readm_30_hipknee$Score)
hist(readm_30_hipknee$percentile)

##READM-30-STK - Use percentiles
readm_30_stk <- rd[rd$Measure.ID =='READM_30_STK',]
count(readm_30_stk$Score)
readm_30_stk$Score <- as.numeric(as.character(readm_30_stk$Score))
hist(readm_30_stk$Score)
readm_30_stk$percentile <- 1 - ecdf(readm_30_stk$Score)(readm_30_stk$Score)
hist(readm_30_stk$percentile)

