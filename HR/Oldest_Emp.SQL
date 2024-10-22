SELECT
    first_name,
    last_name,
    DATEDIFF(day, hire_date, GETDATE()) AS LENGTH_OF_SERVICE
FROM [DataFrenchy].[dbo].[Employee]
ORDER BY LENGTH_OF_SERVICE DESC;
