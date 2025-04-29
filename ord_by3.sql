SELECT 
    EXTRACT(YEAR FROM order_date) AS year, 
    product_code, 
    ROUND(SUM(amount), 2) AS total_revenue
FROM 
    store_sales
GROUP BY 
    year, product_code
ORDER BY 
    year DESC;
