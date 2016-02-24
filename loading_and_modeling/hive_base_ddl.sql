DROP TABLE hospitals;
CREATE EXTERNAL TABLE hospitals(pid, VARCHAR(8), 
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
LOCATION /user/w205/hospital_compare;
