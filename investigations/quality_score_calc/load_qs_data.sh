## Pulled in QS_Table.csv produced in R (See code in /investigations/quality_score_calc)
## cd to location of QS_Table.csv

$ sed -i 1d QS_Table.csv
$ hdfs dfs -mkdir /user/w205/hospital_compare/quality_scores
$ hdfs dfs -put QS_Table.csv /user/w205/hospital_compare/quality_scores
