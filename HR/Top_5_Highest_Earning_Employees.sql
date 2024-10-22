SELECT TOP 5
    e.first_name,
    e.last_name,
    d.department,
    d.salary
FROM 
    [DataFrenchy].[dbo].[Employee] e
INNER JOIN 
    [DataFrenchy].[dbo].[Department] d
ON 
    e.id = d.id
ORDER BY 
    d.salary DESC
