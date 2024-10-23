SELECT
    country,
    COUNT(*) AS CustomerCount
FROM [Inventory_Sale].[dbo].[Customers]
GROUP BY country
ORDER BY CustomerCount DESC
