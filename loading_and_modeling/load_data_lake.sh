## Create local repo & download medicare.gov data  
$ mkdir /data/data_dump  
$ cd /data/data_dump
$ wget "https://data.medicare.gov/views/bg9k-emty/files/Nqcy71p9Ss2RSBWDmP77H1DQXcyacr2khotGbDHHW_s?content_type=application%2Fzip%3B%20charset%3Dbinary&filename=Hospital_Revised_Flatfiles.zip"  
$ unzip *  
$ rm *.zip  
## Rename crucial files  
$ mv "Hospital General Information.csv" "hospitals.csv"  
$ mv "Timely and Effective Care - Hospital.csv" "effective_care.csv"  
$ mv "Readmissions and Deaths - Hospital.csv" "readmissions.csv"  
$ mv "Measure Dates.csv" "measures.csv"  
$ mv "hvbp_hcahps_05_28_2015.csv" "survey_responses.csv"  
## Remove headers from files  
$ sed -i 1d *.csv  
## Load crucial tables into HDFS
$ hdfs dfs -mkdir /user/w205/hospital_compare 
$ hdfs dfs -put hospitals.csv /user/w205/hospital_compare  
$ hdfs dfs -put effective_care.csv /user/w205/hospital_compare  
$ hdfs dfs -put measures.csv /user/w205/hospital_compare  
$ hdfs dfs -put readmissions.csv /user/w205/hospital_compare  
$ hdfs dfs -put survey_responses.csv /user/w205/hospital_compare  
