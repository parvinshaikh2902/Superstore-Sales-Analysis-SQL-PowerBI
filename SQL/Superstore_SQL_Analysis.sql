-- ==========================================
-- Superstore Sales Analysis SQL Queries
-- Author: Parvin Shaikh
-- ==========================================

-- 1. Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM superstore;

-- 2. Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM superstore;

-- 3. Total Quantity Sold
SELECT SUM(Quantity) AS Total_Quantity
FROM superstore;

-- 4. Total Transactions
SELECT COUNT(*) AS Total_Transactions
FROM superstore;

-- 5. Sales by Category
SELECT Category,
SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 6. Profit by Category
SELECT Category,
SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Category
ORDER BY Total_Profit DESC;

-- 7. Sales by Sub-Category
SELECT [Sub-Category],
SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY [Sub-Category]
ORDER BY Total_Sales DESC;

-- 8. Profit by Sub-Category
SELECT [Sub-Category],
SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY [Sub-Category]
ORDER BY Total_Profit DESC;

-- 9. Top 10 States by Sales
SELECT TOP 10 State,
SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY State
ORDER BY Total_Sales DESC;

-- 10. Bottom 10 States by Profit
SELECT TOP 10 State,
SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY State
ORDER BY Total_Profit ASC;

-- 11. Top 10 Cities by Sales
SELECT TOP 10 City,
SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY City
ORDER BY Total_Sales DESC;

-- 12. Bottom 10 Cities by Profit
SELECT TOP 10 City,
SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY City
ORDER BY Total_Profit ASC;

-- 13. Sales by Region
SELECT Region,
SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 14. Profit by Region
SELECT Region,
SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Region
ORDER BY Total_Profit DESC;

-- 15. Sales by Segment
SELECT Segment,
SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Segment
ORDER BY Total_Sales DESC;

-- 16. Profit by Segment
SELECT Segment,
SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Segment
ORDER BY Total_Profit DESC;

-- 17. Average Discount
SELECT AVG(Discount) AS Avg_Discount
FROM superstore;

-- 18. Average Profit Margin
SELECT
SUM(Profit) / SUM(Sales) * 100 AS Profit_Margin
FROM superstore;

-- 19. Highest Selling Product Category
SELECT TOP 1 Category,
SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 20. Most Profitable Sub-Category
SELECT TOP 1 [Sub-Category],
SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY [Sub-Category]
ORDER BY Total_Profit DESC;

-- 21. State-wise Sales Ranking
SELECT
State,
SUM(Sales) AS Total_Sales,
RANK() OVER(ORDER BY SUM(Sales) DESC) AS Sales_Rank
FROM superstore
GROUP BY State;

-- 22. City-wise Profit Ranking
SELECT
City,
SUM(Profit) AS Total_Profit,
RANK() OVER(ORDER BY SUM(Profit) DESC) AS Profit_Rank
FROM superstore
GROUP BY City;

-- 23. Orders with Negative Profit
SELECT *
FROM superstore
WHERE Profit < 0;

-- 24. High Discount Orders
SELECT *
FROM superstore
WHERE Discount >= 0.5;

-- 25. Sales & Profit by Discount
SELECT
Discount,
SUM(Sales) AS Total_Sales,
SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Discount
ORDER BY Discount;

-- End of Analysis