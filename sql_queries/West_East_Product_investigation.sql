SELECT 
	`Product Name`,
    Region,
    Discount,
    COUNT(*) AS Transactions,
    ROUND(SUM(Sales),2) AS total_sales,
    ROUND(SUM(Profit),2) AS total_profit,
    ROUND(AVG(Profit),2) AS average_profit
FROM superstore
WHERE
	Category='Furniture'
    AND 
    `Sub-Category`='Tables'
    AND
    `Product Name` IN (
      'Bevis Oval Conference Table, Walnut',
      'Bretford CR4500 Series Slim Rectangular Table',
      'Riverside Furniture Oval Coffee Table, Oval End Table, End Table with Drawer'
  )
  AND Region IN ('East', 'West')
GROUP BY
    `Product Name`,
    Region,
    Discount
ORDER BY
    `Product Name`,
    Region,
    Discount; 