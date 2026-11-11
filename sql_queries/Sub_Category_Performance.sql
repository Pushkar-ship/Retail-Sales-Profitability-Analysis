USE retail_analysis;
SELECT
	`Sub-Category`,
    ROUND(SUM(Sales),2) AS total_sales,
    ROUND(SUM(Profit),2) AS total_profit,
    ROUND((SUM(Profit)/SUM(Sales))*100,2) AS Profit_Margin
FROM superstore
WHERE Category = 'Furniture'
GROUP BY `Sub-Category`
ORDER BY Total_Profit ASC;

