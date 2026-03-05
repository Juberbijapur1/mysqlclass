# mysqlclass

A beginner-friendly collection of MySQL examples covering fundamental database operations.

## Contents

| File | Description |
|------|-------------|
| `crud_operations.sql` | End-to-end CRUD demo using a `students` table |

## CRUD Operations (`crud_operations.sql`)

The script walks through all four CRUD operations step by step:

| Operation | SQL Statement | What it does |
|-----------|---------------|--------------|
| **Create** | `CREATE DATABASE` / `CREATE TABLE` | Sets up the `school_db` database and `students` table |
| **Create** | `INSERT INTO` | Adds student records |
| **Read**   | `SELECT` | Queries all students, filters by course/age, groups by course |
| **Update** | `UPDATE … SET` | Modifies a student's age, course, or email |
| **Delete** | `DELETE FROM` | Removes a specific student or a range of students |

### Table structure

```sql
CREATE TABLE students (
    id         INT AUTO_INCREMENT PRIMARY KEY,
    name       VARCHAR(100) NOT NULL,
    age        INT          NOT NULL,
    course     VARCHAR(100) NOT NULL,
    email      VARCHAR(150) UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

## How to run

```bash
# Connect to your MySQL server and run the script
mysql -u <username> -p < crud_operations.sql

# Or paste the contents directly into the MySQL shell
mysql -u <username> -p
mysql> source /path/to/crud_operations.sql;
```
