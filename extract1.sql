SELECT 
    order_id,
    order_date,
    EXTRACT(MONTH FROM order_date) AS order_month
FROM 
    store_sales;
