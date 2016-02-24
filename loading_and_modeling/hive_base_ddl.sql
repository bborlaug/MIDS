DROP TABLE hospitals;
CREATE EXTERNAL TABLE hospitals(pid, text(8), hospital_name, text(52), address, text(52), city, text(22), state, text(4), zip, text(7), county, text(22), phone, text(12), hospital_type, text(38), hospital_own, text(45), emergency_services, text(5))
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"= '"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION /user/w205/hospital_compare
