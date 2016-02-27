library(plyr)
library(stringr)

sr <- read.csv('C:/Users/Brennan/Downloads/Hospital_Revised_Flatfiles/mydata/survey_responses.csv')

names(sr)[names(sr)=="Provider.Number"] <- "Provider.ID"
sr$Provider.ID <- str_pad(sr$Provider.ID, 6, pad = "0")
count(sr$HCAHPS.Base.Score)
sr$HCAHPS.Base.Score <- as.numeric(as.character(sr$HCAHPS.Base.Score))
hist(sr$HCAHPS.Base.Score)
summary(sr$HCAHPS.Base.Score)

sr$percentile <- ecdf(sr$HCAHPS.Base.Score)(sr$HCAHPS.Base.Score)
sr$newscore <- sr$HCAHPS.Base.Score/80
hist(sr$percentile)
summary(sr$percentile)
hist(sr$newscore)
summary(sr$newscore)


