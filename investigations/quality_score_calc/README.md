CONTENTS:  
  
QS_description.txt -- File that briefly describes how QS scores were calculated  
chosen_measures.csv -- Summary of mids chosen to calculate QS scores  
R files -- Scripts used to generate the QS_table  
QS_table.csv -- Output from R files; Provides a quality score (QS) for each hospital containing required data  
load_qs_data.sh -- Bash commands used to add QS_table.csv data to HDFS  
hive_qs_ddl.sql -- File used to generate quality scores table in Hive  
