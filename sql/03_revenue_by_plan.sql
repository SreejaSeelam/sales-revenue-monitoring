SELECT p.plan_name, SUM(b.amount) AS revenue
FROM billing b
JOIN customers c ON b.customer_id = c.customer_id
JOIN plans p ON c.plan_id = p.plan_id
GROUP BY p.plan_name;
