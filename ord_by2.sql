SELECT 
    region, 
    ROUND(SUM(amount), 2) AS total_revenue, 
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    store_sales
GROUP BY 
    region
ORDER BY 
    total_revenue ASC, region ASC;
