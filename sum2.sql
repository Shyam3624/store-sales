SELECT 
    ROUND(SUM(amount), 2) AS total_revenue
FROM 
    store_sales
WHERE 
    region = 'North';  -- Replace 'North' with the desired region
