SELECT 
	`Product Name`,
    COUNT(*) AS Transcations,
    ROUND(SUM(Sales),2) AS total_sales,
    ROUND(SUM(Profit),2) AS total_profit,
    ROUND(AVG(Discount)*100,2) AS average_discount
FROM superstore
WHERE
	Category='Furniture'
    AND
    `Sub-Category`='Tables'
    AND
    Region='East'
GROUP BY `Product Name`
ORDER BY total_profit ASC
LIMIT 10;
