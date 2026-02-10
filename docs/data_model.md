# Data Model - Telecom Revenue Monitoring
## Customers
- customer_id: unique customer identifier
- join_date: subscription start date
- region: customer location
- plan_id: subscribed plan
- customer_type: prepaid or postpaid
- status: active or churned
## Usage
- customer_id: user identifier
- usage_date: date of usage
- call_minutes: total call duration
- data_mb: internet consumption
- sms_count: number of SMS
## Billing
- customer_id: user identifier
- bill_date: billing or recharge date
- amount: amount charged
- payment_status: success or failed
## Plans
- plan_id: plan identifier
- plan_name: product name
- price: plan cost
- validity_days: duration

