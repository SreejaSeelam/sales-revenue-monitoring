SELECT SUM(b.amount)/COUNT(DISTINCT c.customer_id) AS ARPU
FROM billing b
JOIN customers c ON b.customer_id = c.customer_id
WHERE c.status='active';
