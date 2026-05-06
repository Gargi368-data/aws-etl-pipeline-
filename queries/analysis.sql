-- Top customers by revenue
SELECT customer_id, SUM(revenue) AS total_revenue
FROM processed_orders
GROUP BY customer_id
ORDER BY total_revenue DESC;

-- Total revenue
SELECT SUM(revenue) AS total_revenue
FROM processed_orders;
