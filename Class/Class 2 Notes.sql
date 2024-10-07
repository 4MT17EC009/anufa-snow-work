Definition of DDL
DDL (Data Definition Language) is a subset of SQL used to define, modify, and manage the structure of database objects. DDL commands are responsible for creating and altering database schemas, tables, indexes, and other structures. The changes made by DDL commands are permanent and affect the database schema.

Key DDL Commands
CREATE
Purpose: Used to create new database objects, such as databases, tables, indexes, or views.
Syntax:

CREATE TABLE table_name (
    column1 datatype [constraints],
    column2 datatype [constraints],
    ...
);
Example:

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    email VARCHAR(100)
);

ALTER
Purpose: Used to modify the structure of an existing database object, such as adding, deleting, or modifying columns in a table.
Syntax:

ALTER TABLE table_name
ADD column_name datatype [constraints];
Example (adding a column):

ALTER TABLE employees
ADD hire_date DATE;
Example (modifying a column):
sql
Copy code
ALTER TABLE employees
MODIFY age SMALLINT;
DROP

Purpose: Used to delete an existing database object, such as a table, view, or index. This command removes the object and all its data permanently.
Syntax:

DROP TABLE table_name;
Example:

DROP TABLE employees;
TRUNCATE

Purpose: Used to remove all records from a table without removing the table itself. Unlike DELETE, TRUNCATE is faster and does not log individual row deletions.
Syntax:

TRUNCATE TABLE table_name;
Example:

TRUNCATE TABLE employees;

Summary
DDL commands define and manage the structure of database objects.
CREATE is used to create new objects.
ALTER modifies existing objects.
DROP removes objects entirely.
TRUNCATE deletes all records in a table while keeping the table structure intact.