SELECT
	`Product Name`,
    Region,
    COUNT(*) AS Transactions,
    ROUND(SUM(Sales),2) AS total_sales,
    ROUND(SUM(Profit),2) AS total_profit,
    ROUND(AVG(Discount)*100,2) AS average_discount
FROM superstore
WHERE Category = 'Furniture'
  AND `Sub-Category` = 'Tables'
  AND Region IN ('East', 'West')
GROUP BY `Product Name`, Region
ORDER BY `Product Name`, Region;