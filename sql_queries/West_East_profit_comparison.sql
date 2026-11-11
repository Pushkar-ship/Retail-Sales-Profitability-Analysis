SELECT
	Region,
    Discount,
    COUNT(*) AS Transcations,
    ROUND(SUM(Sales),2) AS total_sales,
    ROUND(SUM(Profit),2) AS total_profit,
    ROUND(AVG(Profit),2) AS  average_profit
FROM superstore
WHERE Category = 'Furniture'
  AND `Sub-Category` = 'Tables'
  AND Region IN ('East', 'West')
GROUP BY Region, Discount
ORDER BY Discount,Region;