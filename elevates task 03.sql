-- Use database
USE superstore_db;

-- 1. View all records
SELECT *
FROM `sample - superstore`;

-- 2. Count total records
SELECT COUNT(*) AS total_rows
FROM `sample - superstore`;

-- 3. Filter data (Technology category)
SELECT *
FROM `sample - superstore`
WHERE category = 'Technology';

-- 4. Sort to find top 10 sales
SELECT `Order ID`, `Product Name`, Sales
FROM `sample - superstore`
ORDER BY Sales DESC
LIMIT 10;


-- 5. Total sales by category
SELECT category, SUM(sales) AS total_sales
FROM `sample - superstore`
GROUP BY category;

-- 6. Average profit by region
SELECT region, AVG(profit) AS avg_profit
FROM `sample - superstore`
GROUP BY region;

-- 7. Category-wise sales and profit
SELECT category,
       SUM(sales) AS total_sales,
       SUM(profit) AS total_profit
FROM `sample - superstore`
GROUP BY category;

-- 8. HAVING clause (sales > 100000)
SELECT category, SUM(sales) AS total_sales
FROM `sample - superstore`
GROUP BY category
HAVING SUM(sales) > 100000;

-- 9. Monthly sales report using BETWEEN
SELECT Category, SUM(Sales) AS total_sales
FROM `sample - superstore`
GROUP BY Category;


-- 10. Pattern search using LIKE
SELECT Category, SUM(Sales) AS total_sales
FROM `sample - superstore`
GROUP BY Category;


