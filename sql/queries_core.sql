-- Total revenue
SELECT ROUND(SUM(total_amount),2) AS total_revenue
FROM orders;

-- Totals: orders, unique customers, AOV
SELECT COUNT(*) AS total_orders,
       COUNT(DISTINCT customer_id) AS total_customers,
       ROUND(AVG(total_amount),2) AS avg_order_value
FROM orders;

-- Monthly revenue
SELECT strftime('%Y-%m', order_date) AS month,
       ROUND(SUM(total_amount),2) AS revenue
FROM orders
GROUP BY month
ORDER BY month;

-- Top products by revenue
SELECT p.product_id, p.name, p.category,
       SUM(oi.total_price) AS revenue,
       SUM(oi.quantity) AS units_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_id
ORDER BY revenue DESC
LIMIT 10;

SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM order_items;
