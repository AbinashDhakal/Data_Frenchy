SELECT TOP 10
    ship_country,
    ROUND(AVG(CONVERT(FLOAT, REPLACE(REPLACE(freight, '$', ''), ',', ''))),2) AS avg_freight_cost
FROM [Inventory_Sale].[dbo].[ORDERS]
GROUP BY ship_country
ORDER BY avg_freight_cost DESC;
