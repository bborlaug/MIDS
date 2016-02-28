-- USE hospital_compare;

-- Create a view that joins hospitals to their quality scores (for more info on computing/loading quality scores,
-- see /investigations/quality_score_calc)

CREATE VIEW hospital_quality AS
SELECT a.pid, a.hospital_name, a.city, a.state, b.QS
FROM hospitals_tf a
INNER JOIN quality_scores_tf b
ON a.pid = LPAD(b.pid, 6, "0")
WHERE QS<>'';
  
-- Create a view that aggregates hospital quality scores by their state & provides state summary statistics

CREATE VIEW state_quality AS
SELECT state, COUNT(pid) AS count, AVG(QS) AS QS
FROM hospital_quality
GROUP BY state;

