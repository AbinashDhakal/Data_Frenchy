SELECT
    e.first_name,
    e.last_name,
    d.department,
    DATEDIFF(day, e.hire_date, GETDATE()) AS LENGTH_OF_SERVICE,
    RANK() OVER (PARTITION BY d.department ORDER BY e.hire_date ASC) AS RANK
FROM 
    [DataFrenchy].[dbo].[Employee] e
INNER JOIN 
    [DataFrenchy].[dbo].[Department] d
ON 
    e.id = d.id
ORDER BY 
    d.department, RANK;
