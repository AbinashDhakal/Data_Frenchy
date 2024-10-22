SELECT
    location_city,
    COUNT(id) AS Num_Of_Employees
FROM 
    [DataFrenchy].[dbo].[Department] d
GROUP BY 
    d.location_city
ORDER BY 
    Num_Of_Employees DESC;
