--Q2. Answer:-
(SELECT
product_name,
category,
SUM(quantity) AS total_quantity,
SUM(order_amount) AS total_revenue
FROM
products p
JOIN
orders o ON p.product_id = o.product_id
GROUP BY
p.product_id, p.product_name, p.category
ORDER BY
total_revenue DESC
LIMIT 3)
UNION
SELECT
product_name,
category,
0 AS total_quantity,
0 AS total_revenue
FROM
products p
LEFT JOIN
orders o ON p.product_id = o.product_id
WHERE
order_id IS NULL
ORDER BY total_revenue DESC;
