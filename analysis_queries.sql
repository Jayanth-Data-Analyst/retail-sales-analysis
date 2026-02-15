-- Total sales per year
SELECT YEAR(OrderDate) AS year, SUM(Sales) AS total_sales
FROM sales
GROUP BY YEAR(OrderDate);

-- Top 10 customers
SELECT CustomerName, SUM(Sales) AS revenue
FROM sales
GROUP BY CustomerName
ORDER BY revenue DESC
LIMIT 10;

-- Sales by region
SELECT Region, SUM(Sales) AS total_sales
FROM sales
GROUP BY Region;

-- Most profitable category
SELECT Category, SUM(Profit) AS total_profit
FROM sales
GROUP BY Category
ORDER BY total_profit DESC;

-- Loss making products
SELECT ProductName, SUM(Profit) AS total_profit
FROM sales
GROUP BY ProductName
HAVING total_profit < 0;
