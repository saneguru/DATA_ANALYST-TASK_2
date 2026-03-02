SELECT * 
FROM orders
LIMIT 10;

SELECT COUNT(DISTINCT order_id) AS total_orders
FROM orders;

SELECT item_name, SUM(quantity) AS total_quantity
FROM orders
GROUP BY item_name
ORDER BY total_quantity DESC
LIMIT 1;

SELECT SUM(
  CAST(REPLACE(item_price, '$', '') AS REAL) * quantity
) AS total_revenue
FROM orders;

SELECT 
  item_name,
  SUM(CAST(REPLACE(item_price, '$', '') AS REAL) * quantity) AS revenue
FROM orders
GROUP BY item_name
ORDER BY revenue DESC
LIMIT 5;


SELECT 
  SUM(CAST(REPLACE(item_price, '$', '') AS REAL) * quantity)
  /
  COUNT(DISTINCT order_id) AS avg_order_value
FROM orders;

SELECT order_id, SUM(quantity) AS total_items
FROM orders
GROUP BY order_id
HAVING total_items > 3;

SELECT item_name, MAX(
  CAST(REPLACE(item_price, '$', '') AS REAL)
) AS max_price
FROM orders;

SELECT *
FROM orders
WHERE item_name LIKE '%Veg%';

SELECT item_name, SUM(quantity) AS total_sold
FROM orders
GROUP BY item_name
ORDER BY total_sold DESC;