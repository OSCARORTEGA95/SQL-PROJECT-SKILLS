WITH base_query AS (
    SELECT
        f.order_number,
        f.product_key,
        f.order_date,
        f.sales_amount,
        f.quantity,
        c.customer_key,
        c.customer_number,
        c.first_name,
        c.last_name,
        CONCAT(c.first_name, ' ', c.last_name) AS customer_name, -- Added space for proper formatting
        DATEDIFF(YEAR, c.birthdate, GETDATE()) AS age
    FROM gold.fact_sales f
    LEFT JOIN gold.dim_customers c
    ON c.customer_key = f.customer_key
    WHERE order_date IS NOT NULL
),

customer_metrics AS (
    SELECT
        customer_key,
        customer_number,
        customer_name,
        age,
        COUNT(DISTINCT order_number) AS total_orders,
        SUM(sales_amount) AS total_sales,
        SUM(quantity) AS total_quantity,
        COUNT(DISTINCT product_key) AS total_products,
        DATEDIFF(MONTH, MIN(order_date), MAX(order_date)) AS lifespan_months,
        DATEDIFF(MONTH, MAX(order_date), GETDATE()) AS recency_months,
        CASE 
            WHEN COUNT(DISTINCT order_number) > 50 OR SUM(sales_amount) > 10000 THEN 'VIP'
            WHEN COUNT(DISTINCT order_number) >= 5 THEN 'Regular'
            ELSE 'New'
        END AS customer_category,
        CASE 
            WHEN age < 30 THEN 'Young'
            WHEN age BETWEEN 30 AND 50 THEN 'Adult'
            ELSE 'Senior'
        END AS age_group
    FROM base_query
    GROUP BY customer_key, customer_number, customer_name, age
)

SELECT
    customer_number,
    customer_name,
    age,
    age_group,
    customer_category,
    total_orders,
    total_sales,
    total_quantity,
    total_products,
    lifespan_months,
    recency_months,
    total_sales / NULLIF(total_orders, 0) AS avg_order_value,
    CASE 
        WHEN lifespan_months = 0 THEN total_sales -- Handle single-month customers
        ELSE total_sales / NULLIF(lifespan_months, 0) 
    END AS avg_monthly_spend
FROM customer_metrics
ORDER BY total_sales DESC, customer_name;