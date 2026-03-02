-- 1️⃣ View first 10 records from the orders table
SELECT * 
FROM orders
LIMIT 10;


-- 2️⃣ Calculate total number of unique orders
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM orders;


-- 3️⃣ Find the most ordered item (based on total quantity sold)
SELECT item_name, SUM(quantity) AS total_quantity
FROM orders
GROUP BY item_name
ORDER BY total_quantity DESC
LIMIT 1;


-- 4️⃣ Calculate total revenue generated
-- (Removing '$' symbol and converting price to numeric)
SELECT SUM(
  CAST(REPLACE(item_price, '$', '') AS REAL) * quantity
) AS total_revenue
FROM orders;


-- 5️⃣ Find top 5 revenue generating items
SELECT 
  item_name,
  SUM(CAST(REPLACE(item_price, '$', '') AS REAL) * quantity) AS revenue
FROM orders
GROUP BY item_name
ORDER BY revenue DESC
LIMIT 5;


-- 6️⃣ Calculate average order value
-- (Total revenue divided by total distinct orders)
SELECT 
  SUM(CAST(REPLACE(item_price, '$', '') AS REAL) * quantity)
  /
  COUNT(DISTINCT order_id) AS avg_order_value
FROM orders;


-- 7️⃣ Find orders containing more than 3 items
SELECT order_id, SUM(quantity) AS total_items
FROM orders
GROUP BY order_id
HAVING total_items > 3;


-- 8️⃣ Find the most expensive single item (highest unit price)
SELECT item_name, MAX(
  CAST(REPLACE(item_price, '$', '') AS REAL)
) AS max_price
FROM orders;


-- 9️⃣ Filter items that contain the word 'Veg'
SELECT *
FROM orders
WHERE item_name LIKE '%Veg%';


-- 🔟 Calculate total quantity sold for each item
SELECT item_name, SUM(quantity) AS total_sold
FROM orders
GROUP BY item_name
ORDER BY total_sold DESC;
