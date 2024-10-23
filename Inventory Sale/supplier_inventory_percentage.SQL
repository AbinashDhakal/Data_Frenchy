WITH CleanedData AS (
    SELECT 
        supplier_id,
        TRY_CONVERT(FLOAT, REPLACE(REPLACE(unit_price, '$', ''), ',', '')) AS unit_price,
        TRY_CONVERT(INT, units_in_stock) AS units_in_stock
    FROM 
        [Inventory_Sale].[dbo].[PRODUCTS]
    WHERE 
        TRY_CONVERT(FLOAT, REPLACE(REPLACE(unit_price, '$', ''), ',', '')) IS NOT NULL
        AND TRY_CONVERT(INT, units_in_stock) IS NOT NULL
),
TotalInventory AS (
    SELECT 
        supplier_id,
        SUM(unit_price * units_in_stock) AS total_order_value
    FROM 
        CleanedData
    GROUP BY 
        supplier_id
),
OverallTotal AS (
    SELECT 
        SUM(total_order_value) AS overall_total_inventory_value
    FROM 
        TotalInventory
)
SELECT 
    ti.supplier_id,
    ROUND((ti.total_order_value / ot.overall_total_inventory_value) * 100, 2) AS inventory_percentage
FROM 
    TotalInventory ti
CROSS JOIN 
    OverallTotal ot;
