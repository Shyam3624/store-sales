SELECT 
    DISTINCT EXTRACT(YEAR FROM order_date) AS year, 
    EXTRACT(MONTH FROM order_date) AS month
FROM 
    store_sales
ORDER BY 
    year, month LIMIT 3;
