-- MySQL Joins
USE mysqlclass;

-- Create related tables
CREATE TABLE IF NOT EXISTS departments (
    id   INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS employees (
    id            INT AUTO_INCREMENT PRIMARY KEY,
    name          VARCHAR(100) NOT NULL,
    department_id INT,
    salary        DECIMAL(10, 2),
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

-- Seed data
INSERT INTO departments (name) VALUES
    ('Engineering'),
    ('Marketing'),
    ('HR');

INSERT INTO employees (name, department_id, salary) VALUES
    ('David Lee',    1, 85000.00),
    ('Eva Martinez', 1, 92000.00),
    ('Frank Brown',  2, 70000.00),
    ('Grace Kim',    3, 65000.00),
    ('Hank Wilson', NULL, 55000.00); -- no department assigned

-- INNER JOIN: only rows with matching department
SELECT e.name AS employee, d.name AS department
FROM employees e
INNER JOIN departments d ON e.department_id = d.id;

-- LEFT JOIN: all employees, even without a department
SELECT e.name AS employee, d.name AS department
FROM employees e
LEFT JOIN departments d ON e.department_id = d.id;

-- Aggregate with GROUP BY
SELECT d.name AS department, COUNT(e.id) AS headcount, AVG(e.salary) AS avg_salary
FROM departments d
LEFT JOIN employees e ON d.id = e.department_id
GROUP BY d.id, d.name;
