SELECT
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS Profit_Margin,
    COUNT(DISTINCT `Order ID`) AS Total_Orders,
    COUNT(*) AS Total_Transactions,
    SUM(CASE WHEN Profit < 0 THEN 1 ELSE 0 END)
        AS Loss_Making_Transactions
FROM superstore;