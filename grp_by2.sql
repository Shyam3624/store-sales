SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS year_months,
    ROUND(SUM(amount), 2) AS monthly_revenue
FROM 
    store_sales
GROUP BY 
    year_months
ORDER BY 
    monthly_revenue DESC
LIMIT 3;
