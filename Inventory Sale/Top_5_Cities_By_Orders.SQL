SELECT TOP 5
    ship_city,
    DENSE_RANK() OVER (ORDER BY COUNT(*) DESC) AS rank,
    COUNT(*) AS number_of_orders
FROM [Inventory_Sale].[dbo].[ORDERS]
GROUP BY ship_city
ORDER BY number_of_orders DESC
