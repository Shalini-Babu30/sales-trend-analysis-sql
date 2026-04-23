Sales Trend Analysis Using SQL

Objective
Analyze monthly revenue and order volume using SQL aggregation functions.

Tools Used
* MySQL

Dataset
Created a structured dataset (`online_sales`) with order details including:
* order_id
* order_date
* amount
* product_id

Approach
* Extracted **year and month** from order_date
* Used **SUM()** to calculate revenue
* Used **COUNT(DISTINCT order_id)** to calculate order volume
* Grouped data using **GROUP BY**
* Sorted results using **ORDER BY**

SQL Query
sql
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY year, month
ORDER BY year, month;
```
Outcome
Successfully analyzed monthly sales trends and understood how SQL aggregation functions work.

Learning
* GROUP BY for time-based analysis
* Aggregate functions (SUM, COUNT)
* Handling structured datasets
* Basic data analysis using SQL

Conclusion
This task helped in understanding how to analyze business data using SQL and derive insights from sales trends.
