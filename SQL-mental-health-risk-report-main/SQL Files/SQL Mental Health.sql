select * FROM Mental_Health_Dataset
SELECT
COUNT(*) - COUNT(age) AS missing_age,
COUNT(*) - COUNT(gender) AS missing_gender,
COUNT(*) - COUNT(stress_level) AS missing_stress,
COUNT(*) - COUNT(anxiety_level) AS missing_anxiety,
COUNT(*) - COUNT(depression_label) AS missing_depression
FROM Mental_Health_Dataset

SELECT *
FROM Mental_Health_Dataset
WHERE stress_level NOT BETWEEN 1 AND 10;

--stress_level_category 

SELECT *,CASE WHEN stress_level <= 3 THEN 'Low' WHEN stress_level <= 6 THEN 'Moderate' ELSE 'High' END AS stress_category FROM Mental_Health_Dataset;
--anxiety_level_category
SELECT *,CASE WHEN anxiety_level <= 3 THEN 'Low' WHEN anxiety_level <= 6 THEN 'Moderate' ELSE 'High' END AS anxiety_category FROM Mental_Health_Dataset;
--Addiction_level_category
SELECT *,CASE WHEN addiction_level <= 3 THEN 'Low' WHEN addiction_level <= 6 THEN 'Moderate' ELSE 'High' END AS addiction_category FROM Mental_Health_Dataset;
--sleep_hours_category
SELECT *,CASE WHEN sleep_hours <6 THEN 'Poor Sleep' WHEN sleep_hours <= 8 THEN 'Normal Sleep' ELSE 'Good Sleep' END AS sleep_hours_category FROM Mental_Health_Dataset;
--social_media_usage_category
SELECT *,CASE WHEN daily_social_media_hours <2 THEN 'Light User' WHEN daily_social_media_hours <= 5 THEN 'Moderate User' ELSE 'Heavy User' END AS Social_Media_Category FROM Mental_Health_Dataset;
--view combining all categories and mental health risk score
CREATE VIEW vw_mental_health_analytics AS
SELECT *, CASE WHEN stress_level <= 3 THEN 'Low' WHEN stress_level <= 6 THEN 'Moderate' ELSE 'High' END AS stress_category, 
CASE WHEN anxiety_level <= 3 THEN 'Low' WHEN anxiety_level <= 6 THEN 'Moderate' ELSE 'High' END AS anxiety_category,
CASE WHEN addiction_level <= 3 THEN 'Low' WHEN addiction_level <= 6 THEN 'Moderate' ELSE 'High' END AS addiction_category,
CASE WHEN sleep_hours <6 THEN 'Poor Sleep' WHEN sleep_hours <= 8 THEN 'Normal Sleep' ELSE 'Good Sleep' END AS sleep_hours_category,
CASE WHEN daily_social_media_hours <2 THEN 'Light User' WHEN daily_social_media_hours <= 5 THEN 'Moderate User' ELSE 'Heavy User' END AS Social_Media_Category,
(stress_level + anxiety_level + addiction_level) / 3.0 AS mental_health_risk_score
FROM Mental_Health_Dataset;

select * from vw_mental_health_analytics 
--Depression rate
select ROUND(AVG(CAST(depression_label AS FLOAT)) * 100, 2) AS depression_rate_percentage from vw_mental_health_analytics;
--Gender with more depression
select gender, ROUND(AVG(CAST(depression_label AS FLOAT)) * 100, 2) AS depression_rate_percentage from vw_mental_health_analytics GROUP BY gender;
--platform usage with more depression
select platform_usage, ROUND(AVG(CAST(depression_label AS FLOAT)) * 100, 2) AS depression_rate_percentage from vw_mental_health_analytics GROUP BY platform_usage ORDER BY depression_rate_percentage DESC;
--sleep hours category vs depression
select sleep_hours_category, ROUND(AVG(CAST(depression_label AS FLOAT)) * 100, 2) AS depression_rate_percentage from vw_mental_health_analytics GROUP BY sleep_hours_category ORDER BY depression_rate_percentage DESC;
--Addiction level category vs depression
select addiction_category, ROUND(AVG(CAST(depression_label AS FLOAT)) * 100, 2) AS depression_rate_percentage from vw_mental_health_analytics GROUP BY addiction_category ORDER BY depression_rate_percentage DESC;

