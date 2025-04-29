SELECT 
    product_code, 
    EXTRACT(YEAR FROM order_date) AS year, 
    ROUND(SUM(amount), 2) AS total_revenue, 
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    store_sales
GROUP BY 
    product_code, EXTRACT(YEAR FROM order_date)
ORDER BY 
    total_revenue DESC;
