/*
Question: what are the most in-demand skills for data analysts?
what are the top paying jobs for the role
what are the most required top-paying roles 
what are the top skills based on salary for my role 
*/]
WITH remote_job_skills AS(
    SELECT
    skills_id,
    COUNT(*)AS skill_count
    FROM
    skills_job_dim
)
SELECT 
skills,
COUNT(skills_job_dim.job_id) AS demand_count
FROM job_postings_fact
INNER JOIN skills_job_dim 
    ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim 
    ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst' AND 
    job_work_from_home = 'True'
GROUP BY 
    skills
ORDER BY
    demand_count DESC
LIMIT 10