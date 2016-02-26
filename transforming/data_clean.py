sqlContext.sql("USE hospital_compare")

hospitals = sqlContext.sql("SELECT * FROM hospitals_tf")
measures = sqlContext.sql("SELECT * FROM measures_tf")
footnote_crosswalk = sqlContext.sql("SELECT * FROM footnote_crosswalk_tf")
readmissions = sqlContext.sql("SELECT * FROM readmissions_tf")
effective_care = sqlContext.sql("SELECT * FROM effective_care_tf")
survey_responses = sqlContext.sql("SELECT * FROM survey_responses_tf")
