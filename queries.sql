-- Queries for Retail Sales Database
-- Author: Your Name
-- Description: Practice queries on products & orders tables

-------------------------------------------------
-- Basic Selects
-------------------------------------------------

-- 1. Show all products
SELECT * FROM products;

-- 2. Show all orders
SELECT * FROM orders;

-- 3. Show distinct categories
SELECT DISTINCT category FROM products;

-- 4. Count distinct categories
SELECT COUNT(DISTINCT category) FROM products;

-------------------------------------------------
-- Filtering (LIKE, ILIKE, Regex)
-------------------------------------------------

-- 5. Products where category starts with 'E'
SELECT * FROM products
WHERE category LIKE 'E%';

-- 6. Case-insensitive search for 'home'
SELECT * FROM products
WHERE category ILIKE '%home%';

-- 7. Regex: categories ending with 's'
SELECT category FROM products
WHERE category ~ 's$';

-------------------------------------------------
-- Aggregate Functions + GROUP BY
-------------------------------------------------

-- 8. Count products per category
SELECT category, COUNT(*) AS total_products
FROM products
GROUP BY category;

-- 9. Show total revenue per product
SELECT p.product_name, SUM(o.quantity * p.price) AS revenue
FROM products p
JOIN orders o ON p.product_id = o.product_id
GROUP BY p.product_name
ORDER BY revenue DESC;

-- 10. Show categories with more than 2 products
SELECT category, COUNT(*) AS total_products
FROM products
GROUP BY category
HAVING COUNT(*) > 2;

-- 11. Show available products per category
SELECT category, COUNT(*) AS available_products
FROM products
WHERE is_available = TRUE
GROUP BY category
HAVING COUNT(*) > 1;

-------------------------------------------------
-- CASE Expressions
-------------------------------------------------

-- 12. Show products with stock status labels
SELECT product_name,
       CASE
           WHEN stock_quantity = 0 THEN 'Out of Stock'
           WHEN stock_quantity < 10 THEN 'Low Stock'
           ELSE 'In Stock'
       END AS stock_status
FROM products;

-- 13. Revenue performance labeling
SELECT p.product_name,
       SUM(o.quantity * p.price) AS revenue,
       CASE
           WHEN SUM(o.quantity * p.price) > 5000 THEN 'High Revenue'
           WHEN SUM(o.quantity * p.price) BETWEEN 2000 AND 5000 THEN 'Medium Revenue'
           ELSE 'Low Revenue'
       END AS revenue_label
FROM products p
JOIN orders o ON p.product_id = o.product_id
GROUP BY p.product_name;

-------------------------------------------------
-- ORDER BY
-------------------------------------------------

-- 14. Show categories in descending order (uppercased)
SELECT UPPER(category) AS category
FROM products
GROUP BY category
ORDER BY category DESC;

-- 15. Order products by price (highest first)
SELECT product_name, price
FROM products
ORDER BY price DESC;

-------------------------------------------------
-- Joins
-------------------------------------------------

-- 16. Show orders with product names
SELECT o.order_id, o.customer_name, o.order_date, p.product_name, p.category
FROM orders o
JOIN products p ON o.product_id = p.product_id;

-- 17. Show all products even if they have no orders
SELECT p.product_name, o.order_id
FROM products p
LEFT JOIN orders o ON p.product_id = o.product_id;

-- 18. Show customer-wise total orders
SELECT customer_name, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_name
ORDER BY total_orders DESC;

-------------------------------------------------
-- Date Queries
-------------------------------------------------

-- 19. Show orders placed in 2024
SELECT * FROM orders
WHERE EXTRACT(YEAR FROM order_date) = 2024;

-- 20. Orders in the last 30 days
SELECT * FROM orders
WHERE order_date >= CURRENT_DATE - INTERVAL '30 days';

-- 21. Show unavailable products
SELECT product_name
FROM products
WHERE is_available = FALSE;
