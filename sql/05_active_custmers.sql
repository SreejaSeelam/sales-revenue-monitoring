SELECT COUNT(DISTINCT customer_id) AS active_customers
FROM customers
WHERE status='active';
