SELECT customer_type, SUM(b.amount) AS revenue
FROM billing b
JOIN customers c ON b.customer_id = c.customer_id
GROUP BY customer_type;
