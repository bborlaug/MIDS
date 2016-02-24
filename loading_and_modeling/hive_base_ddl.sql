DROP TABLE hospitals;
CREATE EXTERNAL TABLE hospitals(pid VARCHAR(8), 
                                hospital_name VARCHAR(52), 
                                address VARCHAR(52), 
                                city VARCHAR(22), 
                                state VARCHAR(4), 
                                zip VARCHAR(7), 
                                county VARCHAR(22), 
                                phone VARCHAR(12), 
                                hospital_type VARCHAR(38), 
                                hospital_own VARCHAR(45), 
                                emergency_services VARCHAR(5))
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"= '"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION "/user/w205/hospital_compare";

DROP TABLE effective_care;
CREATE EXTERNAL TABLE effective_care(pid VARCHAR(8), 
                                     condition VARCHAR(37), 
                                     mid VARCHAR(20), 
                                     score VARCHAR(44), 
                                     sample VARCHAR(15), 
                                     fid VARCHAR(6))
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"= '"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION "/user/w205/hospital_compare";

DROP TABLE readmissions;
CREATE EXTERNAL TABLE readmissions(pid VARCHAR(8), 
                                   mid VARCHAR(20), 
                                   national_comp VARCHAR(37), 
                                   sample VARCHAR(15), 
                                   score VARCHAR(15), 
                                   low_est VARCHAR(15), 
                                   high_est VARCHAR(15), 
                                   fid VARCHAR(6))
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"= '"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION "/user/w205/hospital_compare";

DROP TABLE measures;
CREATE EXTERNAL TABLE measures(mid VARCHAR(20), 
                               measure_name VARCHAR(159), 
                               measure_start_quart VARCHAR(8), 
                               measure_start_date VARCHAR(21), 
                               measure_end_quart VARCHAR(8), 
                               measure_end_date VARCHAR(21))
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"= '"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION "/user/w205/hospital_compare";

DROP TABLE survey_responses;
CREATE EXTERNAL TABLE survey_responses(pid VARCHAR(8), 
                                       nurses_comm_ds VARCHAR(15), 
                                       doctors_comm_ds VARCHAR(15), 
                                       staff_response_ds VARCHAR(15), 
                                       pain_mgmt_ds VARCHAR(15), 
                                       medicines_comm_ds VARCHAR(15), 
                                       clean_quiet_ds VARCHAR(15), 
                                       discharge_info_ds VARCHAR(15), 
                                       overall_rating_ds VARCHAR(15), 
                                       hcahps_base_score VARCHAR(15), 
                                       hcahps_consist_score VARCHAR(15))
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"= '"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION "/user/w205/hospital_compare";

DROP TABLE footnote_crosswalk;
CREATE EXTERNAL TABLE footnote_crosswalk(fid VARCHAR(6), 
                                         footnote VARCHAR(226))
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"= '"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION "/user/w205/hospital_compare";
