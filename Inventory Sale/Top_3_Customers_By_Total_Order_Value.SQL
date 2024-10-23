SELECT TOP 3
    o.customer_id,
    '$' + CAST(ROUND(SUM(CONVERT(FLOAT, REPLACE(REPLACE(freight, '$', ''), ',', ''))), 2) AS NVARCHAR(50)) AS total_order_value
FROM [Inventory_Sale].[dbo].[ORDERS] o
GROUP BY o.customer_id
ORDER BY total_order_value DESC
