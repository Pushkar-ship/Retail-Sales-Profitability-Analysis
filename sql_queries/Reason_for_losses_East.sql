SELECT
	Discount,
    COUNT(*) AS Transcations,
    ROUND(SUM(Sales),2) AS total_sales,
    ROUND(SUM(Profit),2) AS total_profit,
    ROUND(AVG(Profit),2) AS average_profit,
    ROUND(SUM(Profit)/SUM(Sales)*100,2) AS Profit_Margin
FROM superstore
WHERE
	Category='Furniture'
    AND
    `Sub-Category`='Tables'
    AND
    Region='East'
GROUP BY Discount
ORDER BY Discount;