SELECT
    Category,
    ROUND(SUM(Sales),2) as total_sales,
    ROUND(SUM(Profit), 2) as total_profit,
    ROUND(
        SUM(Profit) / SUM(Sales) * 100,
        2
    ) AS Profit_Margin
FROM superstore
GROUP BY Category
ORDER BY Profit_Margin DESC;