SELECT
    CONCAT(e.first_name, ' ', e.last_name) AS full_name,
    d.department,
    d.salary,
    CASE
        WHEN d.salary < 60000 THEN 'Low'
        WHEN d.salary BETWEEN 60000 AND 90000 THEN 'Medium'
        WHEN d.salary > 90000 THEN 'High'
    END AS salary_classification
FROM 
    [DataFrenchy].[dbo].[Employee] e
INNER JOIN
    [DataFrenchy].[dbo].[Department] d
ON
    e.id = d.id;