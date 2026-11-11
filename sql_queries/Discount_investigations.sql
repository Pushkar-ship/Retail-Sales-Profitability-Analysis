SELECT
	Discount,
    COUNT(*) AS Transactions,
    ROUND(SUM(Sales),2) as total_sales,
    ROUND(SUM(Profit),2) as total_profit,
    ROUND(AVG(Profit),2) as average_profit
FROM superstore
WHERE
	Category='Furniture'
    AND
    `Sub-Category`='Tables'
GROUP BY Discount
ORDER BY Discount
