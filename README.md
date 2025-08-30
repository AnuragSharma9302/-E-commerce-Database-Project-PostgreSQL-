# 🛢E-commerce-Database-Project-PostgreSQL-
# 📖 Project Overview

This project demonstrates the design and querying of a simple E-commerce database using PostgreSQL.
The database stores product information and customer orders. It is built using normalized relational design with proper constraints and relationships.

The project showcases:

Table creation with constraints (PRIMARY KEY, FOREIGN KEY, UNIQUE, DEFAULT, NOT NULL, CHECK).

Importing data from CSV files.

Writing SQL queries using JOIN, GROUP BY, HAVING, ORDER BY, and CASE.

Generating business insights such as sales revenue, top products, and order statistics.


# 🗂 Database Schema

## Products Table

| Column          | Data Type      | Description                 |
|-----------------|----------------|-----------------------------|
| `product_id`    | INT (PK)       | Unique product ID           |
| `product_name`  | VARCHAR(100)   | Name of the product         |
| `category`      | VARCHAR(100)   | Category of the product     |
| `price`         | NUMERIC(10,2)  | Product price               |
| `stock_quantity`| INT            | Units available in stock    |
| `is_available`  | BOOLEAN        | Product availability        |
| `added_on`      | DATE           | Date product was added      |

---

## Orders Table

| Column          | Data Type      | Description                         |
|-----------------|----------------|-------------------------------------|
| `order_id`      | INT (PK)       | Unique order ID                     |
| `product_id`    | INT (FK)       | References `products(product_id)`   |
| `quantity`      | INT            | Number of units ordered             |
| `order_date`    | DATE           | Date of the order                   |
| `customer_name` | VARCHAR(100)   | Name of the customer                |
| `payment_method`| VARCHAR(50)    | Payment method used                 |


Relationship:

One Product can appear in many Orders → One-to-Many Relationship.

FOREIGN KEY (product_id) in orders references products(product_id) with ON DELETE CASCADE (delete product → related orders deleted).

## 📘 Practice Questions

Here are some SQL questions I solved on this dataset:

# Basic Queries
1. Show all products.  
   ```sql
   SELECT * FROM products;

2. Show all orders.
   ```sql
   SELECT * FORM orders;

# Joins

3. Show each order with product details.
   ```sql
    SELECT o.order_id, p.product_name, o.quantity, o.order_date
    FROM orders o
    JOIN products p ON o.product_id = p.product_id;

4. Show all products with their order IDs (if any).
    ```sql
    SELECT p.product_name, o.order_id
    FROM products p
    LEFT JOIN orders o ON p.product_id = o.product_id;
# Aggregations

5. Show the total number of products in each category.
   ```sql
    SELECT category, COUNT(*) AS total_products
    FROM products
    GROUP BY category;
   
    -- OR we can also use 
   
    SELECT p.product_name,COUNT(o.order_id) as product_count
    FROM products as p
    FULL JOIN orders as o
    ON p.product_id = o.product_id
    GROUP BY p.product_name;

6. Show the total revenue earned per product.
   ```sql
   SELECT p.product_name, SUM(o.quantity * p.price) AS revenue
   FROM products p
   JOIN orders o ON p.product_id = o.product_id
   GROUP BY p.product_name;


7. Show categories that have more than 2 products.
   ```sql
   SELECT category, COUNT(*) AS total_products
   FROM products
   GROUP BY category
   HAVING COUNT(*) > 2;
   
8. Show total quantity ordered per catergory
   ```sql
   SELECT p.category , sum(o.quantity) as total_quantity
   FROM orders as o
   JOIN products as p
   ON p.product_id = o.product_id
   GROUP BY p.category;   

# Filtering

9. Show all orders made using UPI.
   ```sql
   SELECT * FROM orders
   WHERE payment_method = 'UPI';


10. Show orders placed in 2024.
    ```sql
    SELECT * FROM orders
    WHERE EXTRACT(YEAR FROM order_date) = 2024;

# CASE Statements
  
11. Show products with a label based on stock:
    
    "Out of Stock" if stock = 0

    "Low Stock" if stock < 10

    "In Stock" otherwise
    ```sql
    SELECT product_name,
           CASE
               WHEN stock_quantity = 0 THEN 'Out of Stock'
               WHEN stock_quantity < 10 THEN 'Low Stock'
               ELSE 'In Stock'
           END AS stock_status
    FROM products;

# 🚀 How to Use

- Create the database schema using the provided CREATE TABLE queries.

- Import the CSV data into your tables(ie., orders.csv & products.csv).

- Run the practice queries to test your SQL skills. 

# 📌 Future Work

- Add more advanced queries (window functions, subqueries).

- Visualize results using Python (Pandas, Matplotlib, Streamlit).
