-- Generate the top 10 hospitals (by quality score) with the following query:

SELECT *
FROM hospital_quality
ORDER BY QS DESC
LIMIT 10;
