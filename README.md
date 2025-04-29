# Store-Sales

# Sales Trend Analysis Using Aggregations

# Overview

This project focuses on analyzing the monthly revenue and order volume of a sales dataset. The goal is to explore sales trends using SQL queries and aggregation functions like SUM(), COUNT(), and GROUP BY. The analysis includes queries for filtering data, calculating revenue, and grouping sales by various attributes such as product, customer, and time periods.

# Dataset: store_sales

The dataset contains the following columns:

order_id: Unique identifier for each order.

product_code: Code representing the product.

product_name: Name of the product.

quantity: Number of items ordered.

order_date: Date when the order was placed.

unit_price: Price per unit of the product.

amount: Total amount of the order (quantity * unit_price).

customer_code: Identifier for the customer.

region: Region where the customer is located.

# Objective

Perform monthly analysis of the sales data.

Calculate total revenue using SUM() and total order volume using COUNT(DISTINCT order_id).

Use EXTRACT(MONTH FROM order_date) or other methods to group data by month and year.

Limit results for specific time periods and sort the results accordingly.

# SQL Queries
The project includes the following SQL queries to analyze the dataset:

1. Monthly Revenue and Order Volume

SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    ROUND(SUM(amount), 2) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    store_sales
GROUP BY 
    year, month
ORDER BY 
    year DESC, month DESC;

   
3. Group by Product and Month for Revenue

SELECT 
    product_code, 
    EXTRACT(YEAR FROM order_date) AS year, 
    EXTRACT(MONTH FROM order_date) AS month, 
    ROUND(SUM(amount), 2) AS total_revenue
FROM 
    store_sales
GROUP BY 
    product_code, year, month
ORDER BY 
    year DESC, month DESC, total_revenue DESC;

   
4. Limit Results for Specific Time Period

SELECT 
    order_id, 
    ROUND(amount, 2) AS total_amount
FROM 
    store_sales
WHERE 
    order_date BETWEEN '2022-10-01' AND '2022-10-31'
ORDER BY 
    order_date DESC
LIMIT 10;


5. Analyze Revenue by Region and Customer

SELECT 
    region, 
    customer_code, 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    ROUND(SUM(amount), 2) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    store_sales
GROUP BY 
    region, customer_code, year, month
ORDER BY 
    year DESC, month DESC, total_revenue DESC;

    
6. Analyze Monthly Revenue for Specific Customer

SELECT 
    customer_code, 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    ROUND(SUM(amount), 2) AS total_revenue
FROM 
    store_sales
WHERE 
    customer_code = 'CUST123'
GROUP BY 
    customer_code, year, month
ORDER BY 
    year DESC, month DESC;

    

Some queries may need adjustments depending on the SQL flavor (PostgreSQL, MySQL, etc.).

Future Enhancements
Extend the analysis to include more complex metrics such as average order size, customer churn rate, and seasonal trends.

Implement visualizations using tools like Python’s Matplotlib or Seaborn.
