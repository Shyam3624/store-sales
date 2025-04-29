SELECT 
    order_id, 
    ROUND(amount, 2) AS total_amount
FROM 
    store_sales

ORDER BY 
    order_date DESC
LIMIT 10;
