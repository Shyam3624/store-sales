DESCRIBE store_sales;
SELECT 
    customer_id, 
    DATE_FORMAT(order_date, '%Y-%m') AS year_months, 
    ROUND(SUM(amount), 2) AS total_revenue, 
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    store_sales
GROUP BY 
    customer_id, year_months
ORDER BY 
    year_months, total_revenue DESC
LIMIT 0, 1000;
