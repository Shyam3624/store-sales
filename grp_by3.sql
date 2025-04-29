DESCRIBE store_sales;
SELECT 
    item_id, 
    DATE_FORMAT(order_date, '%Y-%m') AS year_months, 
    ROUND(SUM(amount), 2) AS revenue 
FROM 
    store_sales 
GROUP BY 
    item_id, year_months 
ORDER BY 
    year_months, revenue DESC 
LIMIT 0, 1000;
