-- USE hospital_compare;

-- Create a view that joins hospitals to their quality scores (for more info on computing/loading quality scores,
-- see /investigations/quality_score_calc)

DROP VIEW hospital_quality;
CREATE VIEW hospital_quality AS
SELECT a.pid, a.hospital_name, a.city, a.state, b.QS
FROM hospitals_tf a
INNER JOIN quality_scores_tf b
ON a.pid = LPAD(b.pid, 6, "0")
WHERE QS<>'';
  
-- Create a view that aggregates hospital quality scores by their state & provides state summary statistics

DROP VIEW state_quality;
CREATE VIEW state_quality AS
SELECT state, COUNT(pid) AS count, AVG(QS) AS QS
FROM hospital_quality
GROUP BY state;

-- Determine which ailment has the greatest variability between hospitals...
-- To make this easy (& inefficient!), create a new table for each mid thats a mortality rate
-- I decided mortality rate was a good proxy for variable outcomes

DROP TABLE mort_30_copd;
CREATE TABLE mort_30_copd AS
SELECT score
FROM readmissions_tf
WHERE mid = "MORT_30_COPD";

DROP TABLE mort_30_cabg;
CREATE TABLE mort_30_cabg AS
SELECT score
FROM readmissions_tf
WHERE mid = "MORT_30_CABG";"

DROP TABLE mort_30_ami;
CREATE TABLE mort_30_ami AS
SELECT score
FROM readmissions_tf
WHERE mid = "MORT_30_AMI";

DROP TABLE mort_30_hf;
CREATE TABLE mort_30_hf AS
SELECT score
FROM readmissions_tf
WHERE mid = "MORT_30_HF";

DROP TABLE mort_30_pn;
CREATE TABLE mort_30_pn AS
SELECT score
FROM readmissions_tf
WHERE mid = "MORT_30_PN";

DROP TABLE mort_30_stk;
CREATE TABLE mort_30_stk AS
SELECT score
FROM readmissions_tf
WHERE mid = "MORT_30_STK";

--Create a table for mortality rate variability

DROP TABLE mortality_variability;
CREATE TABLE mortality_variability(mid VARCHAR(20), var FLOAT);
INSERT INTO mortality_variability SELECT "MORT_30_COPD", VARIANCE(score) FROM mort_30_copd;
INSERT INTO mortality_variability SELECT "MORT_30_CABG", VARIANCE(score) FROM mort_30_cabg;
INSERT INTO mortality_variability SELECT "MORT_30_AMI", VARIANCE(score) FROM mort_30_ami;
INSERT INTO mortality_variability SELECT "MORT_30_HF", VARIANCE(score) FROM mort_30_hf;
INSERT INTO mortality_variability SELECT "MORT_30_PN", VARIANCE(score) FROM mort_30_pn;
INSERT INTO mortality_variability SELECT "MORT_30_STK", VARIANCE(score) FROM mort_30_stk;

DROP TABLE mort_30_copd;
DROP TABLE mort_30_cabg;
DROP TABLE mort_30_ami;
DROP TABLE mort_30_hf;
DROP TABLE mort_30_pn;
DROP TABLE mort_30_stk;




