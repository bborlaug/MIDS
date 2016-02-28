DROP TABLE quality_scores;
CREATE EXTERNAL TABLE quality_scores(pid VARCHAR(8), 
                                     QC-T-ed_1b FLOAT, 
                                     QC-T-op_3b FLOAT, 
                                     QC-T-op_20 FLOAT, 
                                     QC-T FLOAT, 
                                     QC-CP-op_6 FLOAT, 
                                     QC-CP-op_7 FLOAT, 
                                     QC-CP-pn_6 FLOAT, 
                                     QC-CP-scip_inf_1 FLOAT, 
                                     QC-CP-scip_inf_2 FLOAT, 
				     QC-CP-scip_inf_3 FLOAT, 
				     QC-CP-scip_vte_2 FLOAT, 
				     QC-CP-stk_6 FLOAT, 
				     QC-CP-vte_3 FLOAT, 
				     QC-CP-vte_6 FLOAT, 
				     QC-CP FLOAT, 
				     QC-AD-readm_30_ami FLOAT, 
				     QC-AD-readm_30_copd FLOAT, 
				     QC-AD-readm_30_cabg FLOAT, 
				     QC-AD-readm_30_hf FLOAT, 
				     QC-AD-readm_30_pn FLOAT, 
				     QC-AD-readm_30_hipknee FLOAT, 
				     QC-AD-readm_30_stk FLOAT, 
				     QC-AD FLOAT, 
				     PD-mort_30_copd FLOAT, 
 				     PD-mort_30_cabg FLOAT, 
				     PD-mort_30_ami FLOAT, 
				     PD-mort_30_hf FLOAT, 
				     PD-mort_30_pn FLOAT, 
				     PD-mort_30_stk FLOAT, 
				     QC FLOAT, 
				     PD FLOAT, 
				     PW FLOAT, 
                                     QS FLOAT)
COMMENT 'Specific quality of care (QC), prevention of death (PD), and patient treatment - wellness (PW) measure scores that contribute to a specific hospital's quality score (QS)' 
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"= '"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION "/user/w205/hospital_compare/quality_scores";
