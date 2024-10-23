SELECT
    product_name
FROM [Inventory_Sale].[dbo].[PRODUCTS]
WHERE unit_price > (
    SELECT AVG(unit_price)
    FROM [Inventory_Sale].[dbo].[PRODUCTS]
);
