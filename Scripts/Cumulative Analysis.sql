--Calculate the total sales per month
--And the running total of sales over time

SELECT
order_date,
Total_Sales,
SUM(Total_Sales) OVER (ORDER BY order_date) AS Running_Total_Sales
FROM
(
SELECT
DATETRUNC(month, order_date) AS order_date,
SUM(sales_amount) AS Total_Sales
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY DATETRUNC(month, order_date)
) t