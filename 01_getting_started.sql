-- Getting Started with MySQL
-- This script covers the basics: creating a database, tables, and performing CRUD operations.

-- 1. Create and select a database
CREATE DATABASE IF NOT EXISTS mysqlclass;
USE mysqlclass;

-- 2. Create a table
CREATE TABLE IF NOT EXISTS students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    email VARCHAR(150) UNIQUE,
    enrolled_at DATE DEFAULT (CURRENT_DATE)
);

-- 3. INSERT - Add records
INSERT INTO students (name, age, email) VALUES
    ('Alice Johnson', 22, 'alice@example.com'),
    ('Bob Smith', 25, 'bob@example.com'),
    ('Carol White', 20, 'carol@example.com');

-- 4. SELECT - Read records
SELECT * FROM students;

-- Select specific columns
SELECT name, age FROM students;

-- Filter with WHERE
SELECT * FROM students WHERE age > 21;

-- Order results
SELECT * FROM students ORDER BY name ASC;

-- 5. UPDATE - Modify a record
UPDATE students SET age = 23 WHERE name = 'Alice Johnson';

-- 6. DELETE - Remove a record
DELETE FROM students WHERE name = 'Bob Smith';

-- 7. Verify final state
SELECT * FROM students;
