/*
Quesiton: What are the top skills based on salary?
    - Look at the average salary associated with each skill for Data Analyst positions.
    - Focuses on roles with specified salaries, regardless of location.
    - WHY? It reveals how different skills impact salary levels for Data Analysts and 
      helps identify the most financially rewarding skills to acquire or improve.
*/

SELECT 
    skills,
    ROUND(AVG(salary_year_avg), 2) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim 
    ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim 
    ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL AND
    job_work_from_home = TRUE
GROUP BY
    skills
ORDER BY
    avg_salary DESC
LIMIT 25

/*
 Here' the insight

 The analysis of top-paying data analyst skills shows that advanced data engineering, cloud computing, and machine learning tools dominate the highest salary ranges.

Tools used for big data processing, automation, and machine learning workflows tend to command higher salaries than basic analytics tools.

Skills such as PySpark, Databricks, and Scikit-learn highlight the increasing demand for analysts who can work with large-scale data systems and predictive analytics.

This indicates that modern data analysts are expected to combine data analysis, programming, and cloud-based data infrastructure skills.


Top 3 Highest Paying Skills Insights
1. PySpark – Average Salary: $208,172

PySpark is the highest-paying skill in the dataset, showing strong demand for professionals who can process large-scale distributed data.

Companies dealing with big data environments rely heavily on PySpark for fast data processing.

Analysts with PySpark skills can work with massive datasets that traditional tools cannot handle efficiently.

2. Bitbucket – Average Salary: $189,154

Bitbucket is a version control and collaboration platform, indicating the importance of team-based data development workflows.

High-paying roles expect analysts to use Git-based repositories for managing code, data pipelines, and collaboration.

This shows that modern data analysts often work closely with software engineering and DevOps practices.

3. Couchbase – Average Salary: $160,515

Couchbase is a NoSQL database system designed for high-performance applications.

The presence of Couchbase among the top skills suggests a growing demand for analysts who can work with modern distributed databases.

Knowledge of NoSQL technologies allows analysts to manage unstructured and high-volume data efficiently.


json File:-

[
  {
    "skills": "pyspark",
    "avg_salary": "208172.25"
  },
  {
    "skills": "bitbucket",
    "avg_salary": "189154.50"
  },
  {
    "skills": "couchbase",
    "avg_salary": "160515.00"
  },
  {
    "skills": "watson",
    "avg_salary": "160515.00"
  },
  {
    "skills": "datarobot",
    "avg_salary": "155485.50"
  },
  {
    "skills": "gitlab",
    "avg_salary": "154500.00"
  },
  {
    "skills": "swift",
    "avg_salary": "153750.00"
  },
  {
    "skills": "jupyter",
    "avg_salary": "152776.50"
  },
  {
    "skills": "pandas",
    "avg_salary": "151821.33"
  },
  {
    "skills": "elasticsearch",
    "avg_salary": "145000.00"
  },
  {
    "skills": "golang",
    "avg_salary": "145000.00"
  },
  {
    "skills": "numpy",
    "avg_salary": "143512.50"
  },
  {
    "skills": "databricks",
    "avg_salary": "141906.60"
  },
  {
    "skills": "linux",
    "avg_salary": "136507.50"
  },
  {
    "skills": "kubernetes",
    "avg_salary": "132500.00"
  },
  {
    "skills": "atlassian",
    "avg_salary": "131161.80"
  },
  {
    "skills": "twilio",
    "avg_salary": "127000.00"
  },
  {
    "skills": "airflow",
    "avg_salary": "126103.00"
  },
  {
    "skills": "scikit-learn",
    "avg_salary": "125781.25"
  },
  {
    "skills": "jenkins",
    "avg_salary": "125436.33"
  },
  {
    "skills": "notion",
    "avg_salary": "125000.00"
  },
  {
    "skills": "scala",
    "avg_salary": "124903.00"
  },
  {
    "skills": "postgresql",
    "avg_salary": "123878.75"
  },
  {
    "skills": "gcp",
    "avg_salary": "122500.00"
  },
  {
    "skills": "microstrategy",
    "avg_salary": "121619.25"
  }
]
*/