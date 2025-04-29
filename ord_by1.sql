SELECT 
    product_code, 
    ROUND(SUM(amount), 2) AS total_revenue, 
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    store_sales
GROUP BY 
    product_code
ORDER BY 
    product_code ASC;
