-- Month-over-Month Revenue Growth
SELECT 
    strftime('%Y-%m', order_date) AS month,
    ROUND(SUM(total_amount), 2) AS revenue,
    LAG(ROUND(SUM(total_amount), 2)) OVER (ORDER BY strftime('%Y-%m', order_date)) AS prev_revenue,
    ROUND(
        ((SUM(total_amount) - LAG(SUM(total_amount)) OVER (ORDER BY strftime('%Y-%m', order_date)))
          * 100.0 
          / LAG(SUM(total_amount)) OVER (ORDER BY strftime('%Y-%m', order_date))
        ), 2
    ) AS mom_growth_percent
FROM orders
GROUP BY month
ORDER BY month;
