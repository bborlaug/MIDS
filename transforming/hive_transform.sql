USE hospital_compare;

CREATE TABLE hospitals_tf AS 
SELECT * 
FROM hospitals;

CREATE TABLE effective_care_tf AS
SELECT pid, mid, fid, condition, score, sample
FROM effective_care;

CREATE TABLE footnote_crosswalk_tf AS
SELECT *
FROM footnote_crosswalk;

CREATE TABLE measures_tf AS
SELECT *
FROM measures;

CREATE TABLE readmissions_tf AS
SELECT pid, mid, fid, national_comp, sample, score, low_est, high_est
FROM readmissions;

CREATE TABLE survey_responses_tf AS
SELECT  pid, nurses_comm_ds, doctors_comm_ds, staff_response_ds, pain_mgmt_ds, medicines_comm_ds, clean_quiet_ds, discharge_info_ds, overall_rating_ds, hcahps_base_score, hcahps_consist_score
FROM survey_responses;
