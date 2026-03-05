-- MySQL Data Types & Constraints
USE mysqlclass;

-- Common data types and constraints
CREATE TABLE IF NOT EXISTS products (
    id          INT AUTO_INCREMENT PRIMARY KEY,
    name        VARCHAR(200)   NOT NULL,
    price       DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    stock       INT            NOT NULL DEFAULT 0,
    description TEXT,
    is_active   BOOLEAN        NOT NULL DEFAULT TRUE,
    created_at  DATETIME       DEFAULT CURRENT_TIMESTAMP,
    CHECK (price >= 0),
    CHECK (stock >= 0)
);

-- Insert sample products
INSERT INTO products (name, price, stock, description) VALUES
    ('Laptop',      799.99, 10, 'A powerful laptop'),
    ('Mouse',        19.99, 50, 'Wireless mouse'),
    ('Keyboard',     49.99, 30, 'Mechanical keyboard'),
    ('Monitor',     299.99,  8, '24-inch Full HD monitor');

-- Query with filtering and sorting
SELECT name, price, stock
FROM products
WHERE is_active = TRUE
ORDER BY price DESC;

-- Aggregate functions
SELECT
    COUNT(*)       AS total_products,
    AVG(price)     AS average_price,
    MAX(price)     AS most_expensive,
    MIN(price)     AS cheapest,
    SUM(stock)     AS total_stock
FROM products;
