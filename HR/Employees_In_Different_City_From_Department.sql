SELECT 
    d.department AS Department,
    d.location_city AS City,
    COUNT(e.id) AS NumberOfEmployees
FROM 
    [DataFrenchy].[dbo].[Department] d
LEFT JOIN 
    [DataFrenchy].[dbo].[Employee] e ON e.id = d.id
GROUP BY 
    d.department, d.location_city
ORDER BY 
    d.department, d.location_city;
