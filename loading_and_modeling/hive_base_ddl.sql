DROP TABLE hospitals;
CREATE EXTERNAL TABLE hospitals(pid, hospital_name, address, city, state, zip, county, phone, hospital_type, hospital_own, emergency_services)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"= '"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION /user/w205/hospital_compare
