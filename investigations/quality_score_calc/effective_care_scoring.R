library(plyr)

#Load in effective_care table
ec <- read.csv('C:/Users/Brennan/Downloads/Hospital_Revised_Flatfiles/mydata/effective_care.csv')
count(ec$Measure.ID)

##OP-3b - Use percentiles
ec_op_3b <- ec[ec$Measure.ID =='OP_3b',]
count(ec_op_3b$Score)
ec_op_3b$Score <- as.numeric(as.character(ec_op_3b$Score))
hist(ec_op_3b$Score)
ec_op_3b$percentile <- 1 - ecdf(ec_op_3b$Score)(ec_op_3b$Score)
hist(ec_op_3b$percentile)
ec_op_3b$mcat <- 'QCT'

#OP-6 - Use newscore
ec_op_6 <- ec[ec$Measure.ID =='OP_6',]
count(ec_op_6$Score)
ec_op_6$Score <- as.numeric(as.character(ec_op_6$Score))
ec_op_6$percentile <- ecdf(ec_op_6$Score)(ec_op_6$Score)
ec_op_6$newscore <- (ec_op_6$Score-min(ec_op_6$Score, na.rm = TRUE))/(100-min(ec_op_6$Score, na.rm = TRUE))
hist(ec_op_6$newscore)
ec_op_6$mcat <- 'QCCP'

#OP-7 - Use newscore
ec_op_7 <- ec[ec$Measure.ID =='OP_7',]
count(ec_op_7$Score)
ec_op_7$Score <- as.numeric(as.character(ec_op_7$Score))
hist(ec_op_7$Score)
ec_op_7$percentile <- ecdf(ec_op_7$Score)(ec_op_7$Score)
ec_op_7$newscore <- (ec_op_7$Score-min(ec_op_7$Score, na.rm = TRUE))/(100-min(ec_op_7$Score, na.rm = TRUE))
ec_op_7$mcat <- 'QCCP'

#OP-20 - Use percentile
ec_op_20 <- ec[ec$Measure.ID =='OP_20',]
count(ec_op_20$Score)
ec_op_20$Score <- as.numeric(as.character(ec_op_20$Score))
hist(ec_op_20$Score)
ec_op_20$percentile <- ecdf(ec_op_20$Score)(ec_op_20$Score)
hist(ec_op_20$percentile)
summary(ec_op_20$percentile)
ec_op_20$mcat <- 'QCT'

#ED-1b - Use percentile
ec_ed_1b <- ec[ec$Measure.ID =='ED_1b',]
count(ec_ed_1b$Score)
ec_ed_1b$Score <- as.numeric(as.character(ec_ed_1b$Score))
hist(ec_ed_1b$Score)
ec_ed_1b$percentile <- ecdf(ec_ed_1b$Score)(ec_ed_1b$Score)
hist(ec_ed_1b$percentile)
summary(ec_ed_1b$percentile)
ec_ed_1b$mcat <- 'QCT'

#PN-6 - Use newscore
ec_pn_6 <- ec[ec$Measure.ID =='PN_6',]
count(ec_pn_6$Score)
ec_pn_6$Score <- as.numeric(as.character(ec_pn_6$Score))
hist(ec_pn_6$Score)
ec_pn_6$newscore <- (ec_pn_6$Score-min(ec_pn_6$Score, na.rm = TRUE))/(100-min(ec_pn_6$Score, na.rm = TRUE))
hist(ec_pn_6$newscore)
summary(ec_pn_6$newscore)
ec_pn_6$mcat <- 'QCCP'

#SCIP-Inf-1 - Use newscore
ec_scip_inf_1 <- ec[ec$Measure.ID =='SCIP_INF_1',]
count(ec_scip_inf_1$Score)
ec_scip_inf_1$Score <- as.numeric(as.character(ec_scip_inf_1$Score))
hist(ec_scip_inf_1$Score)
ec_scip_inf_1$newscore <- (ec_scip_inf_1$Score-min(ec_scip_inf_1$Score, na.rm = TRUE))/(100-min(ec_scip_inf_1$Score, na.rm = TRUE))
hist(ec_scip_inf_1$newscore)
summary(ec_scip_inf_1$newscore)
ec_scip_inf_1$mcat <- 'QCCP'

#SCIP-Inf-2 - Use newscore
ec_scip_inf_2 <- ec[ec$Measure.ID =='SCIP_INF_2',]
count(ec_scip_inf_2$Score)
ec_scip_inf_2$Score <- as.numeric(as.character(ec_scip_inf_2$Score))
hist(ec_scip_inf_2$Score)
ec_scip_inf_2$newscore <- (ec_scip_inf_2$Score-min(ec_scip_inf_2$Score, na.rm = TRUE))/(100-min(ec_scip_inf_2$Score, na.rm = TRUE))
hist(ec_scip_inf_2$newscore)
summary(ec_scip_inf_2$newscore)
ec_scip_inf_2$mcat <- 'QCCP'

#SCIP-Inf-3 - Use newscore
ec_scip_inf_3 <- ec[ec$Measure.ID =='SCIP_INF_3',]
count(ec_scip_inf_3$Score)
ec_scip_inf_3$Score <- as.numeric(as.character(ec_scip_inf_3$Score))
hist(ec_scip_inf_3$Score)
ec_scip_inf_3$newscore <- (ec_scip_inf_3$Score-min(ec_scip_inf_3$Score, na.rm = TRUE))/(100-min(ec_scip_inf_3$Score, na.rm = TRUE))
hist(ec_scip_inf_3$newscore)
summary(ec_scip_inf_3$newscore)
ec_scip_inf_3$mcat <- 'QCCP'

#SCIP-VTE-2 - Use newscore
ec_scip_vte_2 <- ec[ec$Measure.ID =='SCIP_VTE_2',]
count(ec_scip_vte_2$Score)
ec_scip_vte_2$Score <- as.numeric(as.character(ec_scip_vte_2$Score))
hist(ec_scip_vte_2$Score)
ec_scip_vte_2$newscore <- (ec_scip_vte_2$Score-min(ec_scip_vte_2$Score, na.rm = TRUE))/(100-min(ec_scip_vte_2$Score, na.rm = TRUE))
hist(ec_scip_vte_2$newscore)
summary(ec_scip_vte_2$newscore)
ec_scip_vte_2$mcat <- 'QCCP'

#STK-6 - Use newscore
ec_stk_6 <- ec[ec$Measure.ID =='STK_6',]
count(ec_stk_6$Score)
ec_stk_6$Score <- as.numeric(as.character(ec_stk_6$Score))
hist(ec_stk_6$Score)
ec_stk_6$newscore <- (ec_stk_6$Score-min(ec_stk_6$Score, na.rm = TRUE))/(100-min(ec_stk_6$Score, na.rm = TRUE))
hist(ec_stk_6$newscore)
summary(ec_stk_6$newscore)
ec_stk_6$mcat <- 'QCCP'

#VTE-3 - Use newscore
ec_vte_3 <- ec[ec$Measure.ID =='VTE_3',]
count(ec_vte_3$Score)
ec_vte_3$Score <- as.numeric(as.character(ec_vte_3$Score))
hist(ec_vte_3$Score)
ec_vte_3$newscore <- (ec_vte_3$Score-min(ec_vte_3$Score, na.rm = TRUE))/(100-min(ec_vte_3$Score, na.rm = TRUE))
hist(ec_vte_3$newscore)
summary(ec_vte_3$newscore)
ec_vte_3$mcat <- 'QCCP'

#VTE-6 - Use newscore
ec_vte_6 <- ec[ec$Measure.ID =='VTE_6',]
count(ec_vte_6$Score)
ec_vte_6$Score <- as.numeric(as.character(ec_vte_6$Score))
hist(ec_vte_6$Score)
ec_vte_6$newscore <- (ec_vte_6$Score-max(ec_vte_6$Score, na.rm = TRUE))/(-max(ec_vte_6$Score, na.rm = TRUE))
hist(ec_vte_6$newscore)
summary(ec_vte_6$newscore)
ec_vte_6$mcat <- 'QCCP'

