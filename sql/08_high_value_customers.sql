SELECT c.customer_id, SUM(b.amount) AS total_spent
FROM billing b
JOIN customers c ON b.customer_id = c.customer_id
GROUP BY c.customer_id
HAVING SUM(b.amount) > 200;
