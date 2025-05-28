--Q1. Answer:-
SELECT customer_name,
COUNT(order_id) AS total_orders,
CASE
WHEN COUNT(order_id) > 0 THEN 'Active'
ELSE 'Inactive'
END AS customer_type,
SUM(order_amount) AS total_revenue
FROM
customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY
c.customer_id, c.customer_name
