USE hospital_compare;

DROP TABLE quality_scores;
CREATE EXTERNAL TABLE quality_scores(pid VARCHAR(8), 
                                     QC_T_ed_1b FLOAT, 
                                     QC_T_op_3b FLOAT, 
                                     QC_T_op_20 FLOAT, 
                                     QC_T FLOAT, 
                                     QC_CP_op_6 FLOAT, 
                                     QC_CP_op_7 FLOAT, 
                                     QC_CP_pn_6 FLOAT, 
                                     QC_CP_scip_inf_1 FLOAT, 
                                     QC_CP_scip_inf_2 FLOAT, 
				     QC_CP_scip_inf_3 FLOAT, 
				     QC_CP_scip_vte_2 FLOAT, 
				     QC_CP_stk_6 FLOAT, 
				     QC_CP_vte_3 FLOAT, 
				     QC_CP_vte_6 FLOAT, 
				     QC_CP FLOAT, 
				     QC_AD_readm_30_ami FLOAT, 
				     QC_AD_readm_30_copd FLOAT, 
				     QC_AD_readm_30_cabg FLOAT, 
				     QC_AD_readm_30_hf FLOAT, 
				     QC_AD_readm_30_pn FLOAT, 
				     QC_AD_readm_30_hipknee FLOAT, 
				     QC_AD_readm_30_stk FLOAT, 
				     QC_AD FLOAT, 
				     PD_mort_30_copd FLOAT, 
 				     PD_mort_30_cabg FLOAT, 
				     PD_mort_30_ami FLOAT, 
				     PD_mort_30_hf FLOAT, 
				     PD_mort_30_pn FLOAT, 
				     PD_mort_30_stk FLOAT, 
				     QC FLOAT, 
				     PD FLOAT, 
				     PW FLOAT, 
                                     QS FLOAT)
COMMENT 'Specific quality of care (QC), prevention of death (PD), and patient treatment - wellness (PW) measure scores that contribute to a specific hospitals quality score (QS)' 
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"= '"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION "/user/w205/hospital_compare/quality_scores";

DROP TABLE quality_scores_tf;
CREATE TABLE quality_scores_tf AS
SELECT  pid, QC_T, QC_CP, QC_AD, QC, PD, PW, QS
FROM quality_scores;
