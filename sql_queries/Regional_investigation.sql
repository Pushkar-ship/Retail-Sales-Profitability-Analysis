SELECT
	Region,
    COUNT(*) AS Transactions,
    ROUND(SUM(Sales),2) as total_sales,
    ROUND(SUM(Profit), 2) as total_profit,
    ROUND(AVG(Discount)*100, 2) as average_discount
FROM superstore
WHERE
	Category='Furniture'
    AND
    `Sub-Category`='Tables'
GROUP BY Region
ORDER BY total_profit ASC;