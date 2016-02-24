DROP TABLE hospitals;
CREATE EXTERNAL TABLE hospitals(pid, varchar(8), 
                                hospital_name, varchar(52), 
                                address, varchar(52), 
                                city, varchar(22), 
                                state, varchar(4), 
                                zip, varchar(7), 
                                county, varchar(22), 
                                phone, varchar(12), 
                                hospital_type, varchar(38), 
                                hospital_own, varchar(45), 
                                emergency_services, varchar(5))
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"= '"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION /user/w205/hospital_compare;
