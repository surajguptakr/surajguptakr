--Q3. Answer:-
WITH avg_order_amounts AS (
SELECT
customer_name,
c.customer_id,
AVG(order_amount) AS avg_order_amount
FROM
customers c
JOIN
orders o ON c.customer_id = o.customer_id
GROUP BY
c.customer_id, c.customer_name),
percentiles AS
(SELECT
percentile_cont(0.33) WITHIN GROUP (ORDER BY avg_order_amount) AS low,
percentile_cont(0.66) WITHIN GROUP (ORDER BY avg_order_amount) AS high
FROM
avg_order_amounts)
SELECT
a.customer_id,
a.customer_name,
a.avg_order_amount,
CASE
WHEN a.avg_order_amount <= p.low THEN 'Low Spend'
WHEN a.avg_order_amount > p.low AND a.avg_order_amount <= p.high THEN 'Medium Spend'
ELSE 'High Spend'
END AS customer_segment
FROM
avg_order_amounts a
CROSS JOIN
percentiles p
ORDER BY
a.avg_order_amount DESC;