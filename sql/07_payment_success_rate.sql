SELECT 
COUNT(*) AS total_payments,
SUM(CASE WHEN payment_status='success' THEN 1 ELSE 0 END) AS successful_payments,
ROUND(SUM(CASE WHEN payment_status='success' THEN 1 ELSE 0 END)*100.0/COUNT(*),2) AS success_rate_percentage
FROM billing;
