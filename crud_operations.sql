-- ============================================================
-- MySQL CRUD Operations Demo
-- ============================================================
-- This script demonstrates Create, Read, Update, and Delete
-- (CRUD) operations using a simple 'students' table.
-- ============================================================


-- ============================================================
-- 1. CREATE: Set up the database and table
-- ============================================================

-- Create and select the database
CREATE DATABASE IF NOT EXISTS school_db;
USE school_db;

-- Create the students table
CREATE TABLE IF NOT EXISTS students (
    id         INT AUTO_INCREMENT PRIMARY KEY,
    name       VARCHAR(100) NOT NULL,
    age        INT          NOT NULL,
    course     VARCHAR(100) NOT NULL,
    email      VARCHAR(150) UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- ============================================================
-- 2. CREATE (INSERT): Add rows to the table
-- ============================================================

INSERT INTO students (name, age, course, email) VALUES
    ('Alice Johnson',  20, 'Computer Science', 'alice@example.com'),
    ('Bob Smith',      22, 'Mathematics',       'bob@example.com'),
    ('Carol Williams', 21, 'Physics',            'carol@example.com'),
    ('David Brown',    23, 'Chemistry',          'david@example.com'),
    ('Eva Martinez',   19, 'Computer Science',   'eva@example.com');


-- ============================================================
-- 3. READ (SELECT): Query rows from the table
-- ============================================================

-- Select all students
SELECT * FROM students;

-- Select only name and course columns
SELECT name, course FROM students;

-- Select students enrolled in Computer Science
SELECT * FROM students WHERE course = 'Computer Science';

-- Select students older than 20, ordered by age
SELECT * FROM students WHERE age > 20 ORDER BY age ASC;

-- Count the number of students per course
SELECT course, COUNT(*) AS total_students
FROM students
GROUP BY course
ORDER BY total_students DESC;


-- ============================================================
-- 4. UPDATE: Modify existing rows
-- ============================================================

-- Update Bob's age (id = 2)
UPDATE students
SET age = 23
WHERE id = 2;

-- Update Carol's course and email (id = 3)
UPDATE students
SET course = 'Astrophysics',
    email  = 'carol.astrophysics@example.com'
WHERE id = 3;

-- Verify the updates
SELECT * FROM students WHERE id IN (2, 3);


-- ============================================================
-- 5. DELETE: Remove rows from the table
-- ============================================================

-- Delete a specific student by primary key (id = 4)
DELETE FROM students WHERE id = 4;

-- Delete all students younger than 20
DELETE FROM students WHERE age < 20;

-- Verify remaining rows
SELECT * FROM students;


-- ============================================================
-- 6. Cleanup (optional – uncomment to run)
-- ============================================================

-- DROP TABLE IF EXISTS students;
-- DROP DATABASE IF EXISTS school_db;
