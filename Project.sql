CREATE TABLE products(
	product_id INT PRIMARY KEY,   --WHY not SERIAL , cause we will import the csv file so the id is already metioned
	product_name VARCHAR(100) NOT NULL,
	category VARCHAR(100) NOT NULL,
	price numeric(10,2) DEFAULT 0.00,
	stock_quantity INT  NOT NULL DEFAULT 0,
	is_available BOOLEAN DEFAULT TRUE,
	added_on DATE
)


CREATE TABLE orders(
	order_id INT Primary Key,
	product_id INT,
	quantity INT,
	order_date DATE,
	customer_name VARCHAR(100),
	payment_method VARCHAR(50),
	CONSTRAINT fk_product
		FOREIGN KEY(product_id)
		REFERENCES products(product_id)
		ON DELETE CASCADE               --this means that if you delete some thing from one table based on the primary-foreign key that elements from the other Table will be Deleted too
);

-- Now use the csv file to import the data to the tables directly .
-- Right click on the tables(Orders and Products )and Select IMPORT/EXPORT data option
SELECT * FROM products;
SELECT * FROM orders;


-- Q1.Show each order along with the product name and price
SELECT o.order_id,o.customer_name,p.product_name,p.price
FROM products p
INNER JOIN orders o 
ON p.product_id = o.product_id;

-- Q2.Show all the products even if they were never ordered

SELECT p.product_name, o.order_id
FROM products p
LEFT JOIN orders o 
ON p.product_id = o.product_id;


-- Q3. Show orders for only Electronics category
SELECT p.product_name,o.order_id,p.category
FROM products p
INNER join orders o    -- simple inner join , cause we only need products
ON p.product_id = o.product_id
WHERE category ='Electronics';

--Q4. List all the orders sorted by product price (High to Low)
SELECT p.product_name ,o.order_id,p.price
FROM products as p
INNER JOIN orders as o
ON p.product_id = o.product_id
ORDER BY p.price DESC;

-- Q5.Show number of orders placed for each product
SELECT p.product_name,COUNT(o.order_id) as product_count
FROM products as p
FULL JOIN orders as o
-- LEFT JOIN orders as o  -- it will give same result cause we need names of all product from left table 
ON p.product_id = o.product_id
GROUP BY p.product_name;

-- Q6.Show the total revenue earned per product.

SELECT p.product_name, SUM(o.quantity * p.price) AS revenue
FROM products p 
LEFT JOIN orders o
ON p.product_id = o.product_id
GROUP BY p.product_name
ORDER BY revenue DESC ; -- We can also do order By

-- Q7.Show peoducts wher total order revenue > 2000
SELECT p.product_name , SUM(o.quantity * p.price) AS revenue
FROM products p JOIN orders o
ON p.product_id = o.product_id
GROUP BY p.product_name
-- HAVING revenue > 2000; --Problem: PostgreSQL (and SQL in general) does not allow you to use an alias (revenue) in the HAVING clause.
-- cause using  SUM(o.quantity * p.price) AS revenue this is just a soft copy ie., Just a SNAPSHOT

HAVING SUM(o.quantity * p.price) >2000;

-- Q8. Show unique customers who ordered 'Fitness' Products

SELECT o.customer_name ,p.product_name, p.category
FROM orders as o
JOIN products as p
ON p.product_id = o.product_id
WHERE category ='Fitness'

-- OR

SELECT DISTINCT o.customer_name , p.category
FROM orders as o
JOIN products as p
ON p.product_id = o.product_id
WHERE category ='Fitness'

-- Same Result with both the approaches


-- Q9.Show total quantity ordered per catergory
SELECT p.category , sum(o.quantity) as total_quantity
FROM orders as o
JOIN products as p
on p.product_id = o.product_id
GROUP BY p.category;

-- Q10. Show all the products that have never been ordered
SELECT p.product_name,o.order_id
FROM products as p
LEFT JOIN orders as o
on p.product_id = o.product_id
WHERE order_id is NULL;


-- Q11.Show the Top 3 products by revenue
SELECT p.product_name , SUM(o.quantity * p.price) AS revenue
FROM products p JOIN orders o
ON p.product_id = o.product_id
GROUP BY p.product_name
ORDER BY revenue DESC
LIMIT 3 ;

-- Q.12 Show each payment method and how much revenue it generated .
SELECT o.payment_method,SUM(o.quantity * p.price) as revenue
FROM orders as o 
JOIN products as p
On p.product_id = o.product_id
GROUP BY o.payment_method

-- Q13.Show the customer who placed the largest single order(by revenue)
SELECT o.customer_name , SUM(o.quantity * p.price) AS revenue
FROM products p JOIN orders o
ON p.product_id = o.product_id
GROUP BY o.customer_name
ORDER BY revenue DESC
LIMIT 1;

-- Q14.Show products with a label based on stock:

-- "Out of Stock" if stock = 0
-- "Low Stock" if stock < 10
-- "In Stock" otherwise

SELECT product_name,
   CASE
	   WHEN stock_quantity = 0 THEN 'Out of Stock'
	   WHEN stock_quantity < 10 THEN 'Low Stock'
	   ELSE 'In Stock'
   END AS stock_status
FROM products;