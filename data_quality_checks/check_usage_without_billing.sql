SELECT u.customer_id, u.usage_date, u.call_minutes, u.data_mb
FROM usage u
LEFT JOIN billing b
ON u.customer_id = b.customer_id AND u.usage_date = b.bill_date
WHERE b.customer_id IS NULL;
