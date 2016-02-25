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
$ mv "Footnote Crosswalk.csv" "footnote_crosswalk.csv"
## Remove headers from files  
$ sed -i 1d *.csv  
## Load crucial tables into HDFS
$ hdfs dfs -mkdir /user/w205/hospital_compare
$ hdfs dfs -mkdir /user/w205/hospital_compare/hospitals
$ hdfs dfs -mkdir /user/w205/hospital_compare/effective_care
$ hdfs dfs -mkdir /user/w205/hospital_compare/measures
$ hdfs dfs -mkdir /user/w205/hospital_compare/readmissions
$ hdfs dfs -mkdir /user/w205/hospital_compare/survey_responses
$ hdfs dfs -mkdir /user/w205/hospital_compare/footnote_crosswalk
$ hdfs dfs -put hospitals.csv /user/w205/hospital_compare/hospitals  
$ hdfs dfs -put effective_care.csv /user/w205/hospital_compare/effective_care  
$ hdfs dfs -put measures.csv /user/w205/hospital_compare/measures
$ hdfs dfs -put readmissions.csv /user/w205/hospital_compare/readmissions
$ hdfs dfs -put survey_responses.csv /user/w205/hospital_compare/survey_responses
$ hdfs dfs -put footnote_crosswalk.csv /user/w205/hospital_compare/footnote_crosswalk
