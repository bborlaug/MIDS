library(plyr)

qs <- subset(ec_ed_1b, select = c(Provider.ID, Measure.ID, percentile))
qs$Measure.ID <- NULL
names(qs)[names(qs)=="percentile"] <- "QC-T-ed_1b"

qs <- merge(x = qs, y = subset(ec_op_3b, select = c(Provider.ID, percentile)), by = "Provider.ID", all = TRUE)
names(qs)[names(qs)=="percentile"] <- "QC-T-op_3b"

qs <- merge(x = qs, y = subset(ec_op_20, select = c(Provider.ID, percentile)), by = "Provider.ID", all = TRUE)
names(qs)[names(qs)=="percentile"] <- "QC-T-op_20"

qs$QCT <- rowMeans(subset(qs, select = c("QC-T-ed_1b", "QC-T-op_3b", "QC-T-op_20")), na.rm = TRUE)
names(qs)[names(qs)=="QCT"] <- "QC-T"

hist(qs$`QC-T`)
summary(qs$`QC-T`)

qs <- merge(x = qs, y = subset(ec_op_6, select = c(Provider.ID, newscore)), by = "Provider.ID", all = TRUE)
names(qs)[names(qs)=="newscore"] <- "QC-CP-op_6"

qs <- merge(x = qs, y = subset(ec_op_7, select = c(Provider.ID, newscore)), by = "Provider.ID", all = TRUE)
names(qs)[names(qs)=="newscore"] <- "QC-CP-op_7"

qs <- merge(x = qs, y = subset(ec_pn_6, select = c(Provider.ID, newscore)), by = "Provider.ID", all = TRUE)
names(qs)[names(qs)=="newscore"] <- "QC-CP-pn_6"

qs <- merge(x = qs, y = subset(ec_scip_inf_1, select = c(Provider.ID, newscore)), by = "Provider.ID", all = TRUE)
names(qs)[names(qs)=="newscore"] <- "QC-CP-scip_inf_1"

qs <- merge(x = qs, y = subset(ec_scip_inf_2, select = c(Provider.ID, newscore)), by = "Provider.ID", all = TRUE)
names(qs)[names(qs)=="newscore"] <- "QC-CP-scip_inf_2"

qs <- merge(x = qs, y = subset(ec_scip_inf_3, select = c(Provider.ID, newscore)), by = "Provider.ID", all = TRUE)
names(qs)[names(qs)=="newscore"] <- "QC-CP-scip_inf_3"

qs <- merge(x = qs, y = subset(ec_scip_vte_2, select = c(Provider.ID, newscore)), by = "Provider.ID", all = TRUE)
names(qs)[names(qs)=="newscore"] <- "QC-CP-scip_vte_2"

qs <- merge(x = qs, y = subset(ec_stk_6, select = c(Provider.ID, newscore)), by = "Provider.ID", all = TRUE)
names(qs)[names(qs)=="newscore"] <- "QC-CP-stk_6"

qs <- merge(x = qs, y = subset(ec_vte_3, select = c(Provider.ID, newscore)), by = "Provider.ID", all = TRUE)
names(qs)[names(qs)=="newscore"] <- "QC-CP-vte_3"

qs <- merge(x = qs, y = subset(ec_vte_6, select = c(Provider.ID, newscore)), by = "Provider.ID", all = TRUE)
names(qs)[names(qs)=="newscore"] <- "QC-CP-vte_6"

qs$QCCP <- rowMeans(subset(qs, select = c("QC-CP-op_6", "QC-CP-op_7", "QC-CP-pn_6", "QC-CP-scip_inf_1", "QC-CP-scip_inf_2", "QC-CP-scip_inf_3", "QC-CP-scip_vte_2", "QC-CP-stk_6", "QC-CP-vte_3", "QC-CP-vte_6")), na.rm = TRUE)
names(qs)[names(qs)=="QCCP"] <- "QC-CP"

hist(qs$`QC-CP`)
summary(qs$`QC-CP`)

qs <- merge(x = qs, y = subset(readm_30_ami, select = c(Provider.ID, percentile)), by = "Provider.ID", all = TRUE)
names(qs)[names(qs)=="percentile"] <- "QC-AD-readm_30_ami"

qs <- merge(x = qs, y = subset(readm_30_copd, select = c(Provider.ID, percentile)), by = "Provider.ID", all = TRUE)
names(qs)[names(qs)=="percentile"] <- "QC-AD-readm_30_copd"

qs <- merge(x = qs, y = subset(readm_30_cabg, select = c(Provider.ID, percentile)), by = "Provider.ID", all = TRUE)
names(qs)[names(qs)=="percentile"] <- "QC-AD-readm_30_cabg"

qs <- merge(x = qs, y = subset(readm_30_hf, select = c(Provider.ID, percentile)), by = "Provider.ID", all = TRUE)
names(qs)[names(qs)=="percentile"] <- "QC-AD-readm_30_hf"

qs <- merge(x = qs, y = subset(readm_30_pn, select = c(Provider.ID, percentile)), by = "Provider.ID", all = TRUE)
names(qs)[names(qs)=="percentile"] <- "QC-AD-readm_30_pn"

qs <- merge(x = qs, y = subset(readm_30_hipknee, select = c(Provider.ID, percentile)), by = "Provider.ID", all = TRUE)
names(qs)[names(qs)=="percentile"] <- "QC-AD-readm_30_hipknee"

qs <- merge(x = qs, y = subset(readm_30_stk, select = c(Provider.ID, percentile)), by = "Provider.ID", all = TRUE)
names(qs)[names(qs)=="percentile"] <- "QC-AD-readm_30_stk"

qs$QCAD <- rowMeans(subset(qs, select = c("QC-AD-readm_30_ami", "QC-AD-readm_30_copd", "QC-AD-readm_30_cabg", "QC-AD-readm_30_hf", "QC-AD-readm_30_pn", "QC-AD-readm_30_hipknee", "QC-AD-readm_30_stk")), na.rm = TRUE)
names(qs)[names(qs)=="QCAD"] <- "QC-AD"

hist(qs$`QC-AD`)
summary(qs$`QC-AD`)

qs <- merge(x = qs, y = subset(mort_30_copd, select = c(Provider.ID, percentile)), by = "Provider.ID", all = TRUE)
names(qs)[names(qs)=="percentile"] <- "PD-mort_30_copd"

qs <- merge(x = qs, y = subset(mort_30_cabg, select = c(Provider.ID, percentile)), by = "Provider.ID", all = TRUE)
names(qs)[names(qs)=="percentile"] <- "PD-mort_30_cabg"

qs <- merge(x = qs, y = subset(mort_30_ami, select = c(Provider.ID, percentile)), by = "Provider.ID", all = TRUE)
names(qs)[names(qs)=="percentile"] <- "PD-mort_30_ami"

qs <- merge(x = qs, y = subset(mort_30_hf, select = c(Provider.ID, percentile)), by = "Provider.ID", all = TRUE)
names(qs)[names(qs)=="percentile"] <- "PD-mort_30_hf"

qs <- merge(x = qs, y = subset(mort_30_pn, select = c(Provider.ID, percentile)), by = "Provider.ID", all = TRUE)
names(qs)[names(qs)=="percentile"] <- "PD-mort_30_pn"

qs <- merge(x = qs, y = subset(mort_30_stk, select = c(Provider.ID, percentile)), by = "Provider.ID", all = TRUE)
names(qs)[names(qs)=="percentile"] <- "PD-mort_30_stk"

qs$QC <- (qs$`QC-T`*(100/9)) + (qs$`QC-CP`*(100/9)) + (qs$`QC-AD`*(100/9))

hist(qs$`QC`)
summary(qs$`QC`)

qs$PD <- (100/3) * rowMeans(subset(qs, select = c("PD-mort_30_copd", "PD-mort_30_cabg", "PD-mort_30_ami", "PD-mort_30_hf", "PD-mort_30_pn", "PD-mort_30_stk")), na.rm = TRUE)

hist(qs$`PD`)
summary(qs$`PD`)

qs <- merge(x = qs, y = subset(sr, select = c(Provider.ID, newscore)), by = "Provider.ID", all = TRUE)
names(qs)[names(qs)=="newscore"] <- "PW"
qs$PW <- (100/3) * qs$PW

hist(qs$`PW`)
summary(qs$`PW`)

qs$QS <- qs$QC + qs$PD + qs$PW

hist(qs$QS)
summary(qs$QS)

write.csv(qs, file = "C:/Users/Brennan/Desktop/qs_table.csv")
