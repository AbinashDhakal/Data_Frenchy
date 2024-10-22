SELECT
    first_name,
    last_name,
    location_city,
    location_state
FROM [DataFrenchy].[dbo].[Department]
INNER JOIN [DataFrenchy].[dbo].[Employee]
ON [DataFrenchy].[dbo].[Employee].id = [DataFrenchy].[dbo].[Department].id
WHERE location_city = location_city    
