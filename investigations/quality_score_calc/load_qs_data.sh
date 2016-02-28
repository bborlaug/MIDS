## Pulled in QS_table.csv produced in R (See code in /investigations/quality_score_calc)
## cd to location of QS_table.csv

$ sed -i 1d QS_table.csv
$ hdfs dfs -mkdir /user/w205/hospital_compare/quality_scores
$ hdfs dfs -put QS_table.csv /user/w205/hospital_compare/quality_scores
