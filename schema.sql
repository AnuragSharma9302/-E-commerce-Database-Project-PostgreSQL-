-- Schema for Retail Sales Database

-- Products Table
CREATE TABLE products(
    product_id INT PRIMARY KEY,   -- Not SERIAL, since IDs come from CSV
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(100) NOT NULL,
    price NUMERIC(10,2) DEFAULT 0.00,
    stock_quantity INT NOT NULL DEFAULT 0,
    is_available BOOLEAN DEFAULT TRUE,
    added_on DATE
);

-- Orders Table
CREATE TABLE orders(
    order_id INT PRIMARY KEY,
    product_id INT,
    quantity INT,
    order_date DATE,
    customer_name VARCHAR(100),
    payment_method VARCHAR(50),
    CONSTRAINT fk_product
        FOREIGN KEY(product_id)
        REFERENCES products(product_id)
        ON DELETE CASCADE
);
