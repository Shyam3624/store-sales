SELECT 
    region,
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    ROUND(SUM(amount), 2) AS regional_monthly_revenue
FROM 
    store_sales
GROUP BY 
    region, order_year, order_month
ORDER BY 
    region, order_year, order_month;
