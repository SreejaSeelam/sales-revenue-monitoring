-- Check if all expected tables arrived
SELECT COUNT(*) AS rows
FROM customers
WHERE ingestion_date = CURRENT_DATE;

-- Check if row count is consistent with previous day
SELECT 
    CURRENT_DATE AS today,
    COUNT(*) AS row_count,
    LAG(COUNT(*)) OVER (ORDER BY ingestion_date) AS yesterday_row_count
FROM customers
WHERE ingestion_date >= CURRENT_DATE - 1
GROUP BY CURRENT_DATE;

-- Check for missing critical columns
SELECT *
FROM billing
WHERE customer_id IS NULL
   OR amount IS NULL
   OR bill_date IS NULL;

-- Check for invalid datatypes / negative values
SELECT *
FROM usage
WHERE call_minutes < 0
   OR data_mb < 0
   OR sms_count < 0;

-- Check for schema changes
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name='BILLING';

-- Check duplicates in primary keys
SELECT customer_id, COUNT(*)
FROM customers
WHERE ingestion_date = CURRENT_DATE
GROUP BY customer_id
HAVING COUNT(*) > 1;
