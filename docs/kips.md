# KPIs - Telecom Revenue Monitoring
## Core Revenue KPIs
1. Total Revenue - SUM(billing.amount)
2. Revenue by Region - SUM(billing.amount) GROUP BY customers.region
3. Revenue by Plan -SUM(billing.amount) GROUP BY plans.plan_name
4. ARPU - SUM(billing.amount)/COUNT(DISTINCT customers.customer_id)
5. Acyive Customers - COUNT(DISTINCT customers WHERE status='active')
## Monitoring / Advanced KPIs
1. Prepaid vs Postpaid Revenue - SUM(amount) GROUP BY customer_type
2. Recharge / Payment Success Rate - COUNT(success)/COUNT(total payments)
3. Daily Usage vs Revenue Mismatch - Compare usage vs billing table
4. High-Value Customer Revenue - SUM(amount WHERE ARPU>threshold)
5. Revenue Drop % vs Historical Baseline - Compare current vs last 7/30 days
## Optional KPIs
- Number of new customers per day/week
- Revenue by network/tower/region
- Usage breakdown (calls/data/SMS) vs revenue
