## Pulled in qs_table.csv produced in R (See code in /investigations/quality_score_calc)
## cd to location of qs_table.csv

$ sed -i 1d qs_table.csv
$ hdfs dfs -mkdir /user/w205/hospital_compare/quality_scores
$ hdfs dfs -put qs_table.csv /user/w205/hospital_compare/quality_scores
