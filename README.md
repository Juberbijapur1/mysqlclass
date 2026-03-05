# mysqlclass

A beginner-friendly collection of MySQL scripts for learning the fundamentals of relational databases.

## Prerequisites

- [MySQL](https://dev.mysql.com/downloads/mysql/) 8.0 or later (or [MariaDB](https://mariadb.org/) 10.6+)
- A MySQL client such as the `mysql` CLI, [MySQL Workbench](https://www.mysql.com/products/workbench/), or [DBeaver](https://dbeaver.io/)

## How to Run the Scripts

```bash
# Connect to your MySQL server
mysql -u root -p

# Run a script from the mysql prompt
source /path/to/mysqlclass/01_getting_started.sql

# Or run it directly from the shell
mysql -u root -p < 01_getting_started.sql
```

## Scripts

| File | Topics Covered |
|------|---------------|
| `01_getting_started.sql` | `CREATE DATABASE`, `CREATE TABLE`, `INSERT`, `SELECT`, `UPDATE`, `DELETE` |
| `02_data_types_and_constraints.sql` | Common data types, `NOT NULL`, `DEFAULT`, `CHECK`, aggregate functions |
| `03_joins.sql` | `INNER JOIN`, `LEFT JOIN`, `FOREIGN KEY`, `GROUP BY` |

## Key Concepts

### CRUD Operations
| Operation | SQL Statement |
|-----------|--------------|
| Create    | `INSERT INTO table_name ...` |
| Read      | `SELECT ... FROM table_name` |
| Update    | `UPDATE table_name SET ...` |
| Delete    | `DELETE FROM table_name WHERE ...` |

### Useful MySQL Commands
```sql
SHOW DATABASES;          -- list all databases
USE database_name;       -- switch to a database
SHOW TABLES;             -- list tables in current database
DESCRIBE table_name;     -- show table structure
```
