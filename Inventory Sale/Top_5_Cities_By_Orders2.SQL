WITH RankedCities AS (
    SELECT
        ship_city,
        COUNT(*) AS number_of_orders,
        DENSE_RANK() OVER (ORDER BY COUNT(*) DESC) AS rank
    FROM [Inventory_Sale].[dbo].[ORDERS]
    GROUP BY ship_city
)
SELECT
    ship_city,
    number_of_orders,
    rank
FROM RankedCities
WHERE rank <= 5
ORDER BY number_of_orders DESC;
