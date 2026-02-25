-----------Retail Revenue & Customer Behavior Analysis Using SQL---------------
-------------------------------------------------------------------------------

-- 1. What is the total revenue generated?
SELECT 
	ROUND(SUM(unitprice * quantity), 2) AS "Total_Revenue"
FROM retail
WHERE quantity > 0 AND unitprice > 0;



-- 2. How does revenue trend month-over-month?
SELECT 	
	TO_CHAR(DATE_TRUNC('month', invoicedate), 'YYYY-MM') AS "Month",
	ROUND(SUM(unitprice * quantity), 2) AS "Monthly_Revenue"
FROM retail
WHERE 
	quantity > 0 AND unitprice > 0
GROUP BY 1
ORDER BY 1 ASC;


-- 3. Which countries generate the highest revenue?
SELECT 
	country AS "Country",
	ROUND(SUM(unitprice * quantity), 2) AS "Total_Revenue"
FROM retail
WHERE quantity > 0 AND unitprice > 0
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;


-- 4. What are the top 10 revenue-generating products?
SELECT 
	stockcode AS "Product_Stock_Code",
	MIN(description) AS "Description",
	ROUND(SUM(unitprice * quantity), 2) AS "Total_Revenue"
FROM retail
WHERE quantity > 0 AND unitprice > 0 AND stockcode IS NOT NULL
GROUP BY 1
ORDER BY 3 DESC
LIMIT 10;


-- 5. Who are the top 10 customers by total spending?
SELECT 
	customerid AS "Customer_ID",
	ROUND(SUM(unitprice * quantity), 2) AS "Total_Revenue"
FROM retail
WHERE quantity > 0 AND unitprice > 0 AND customerid IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;

