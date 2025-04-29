SELECT 
    customer_code, 
    ROUND(SUM(amount), 2) AS total_revenue
FROM 
    store_sales
GROUP BY 
    customer_code
ORDER BY 
    total_revenue DESC;  -- Sorting by total revenue in descending order
