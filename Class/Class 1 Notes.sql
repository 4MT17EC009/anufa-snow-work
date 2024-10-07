Creating a table, schema, and database in SQL involves several steps. 

1. Create a Database
First, you'll need to create a database. You can do this using the CREATE DATABASE statement.

CREATE DATABASE my_database;

2. Use the Database
Once you have created the database, you need to select it for use.

USE my_database;

3. Create a Table
Next, you can create a table within the database. You will need to define the table's structure (columns and their data types).

CREATE TABLE my_table (
    id INT,
    name VARCHAR(100),
    age INT,
    email VARCHAR(100)
);

4. Insert Data into the Table
You can insert data into the table using the INSERT INTO statement.

INSERT INTO my_table (name, age, email) VALUES 
('Alice', 30, 'alice@example.com'),
('Bob', 25, 'bob@example.com'),
('Charlie', 35, 'charlie@example.com');

5. Query the Data
To retrieve the data and count records individually, you can use the SELECT statement. Here are a few examples:

Count All Records
To count all records in the table:

SELECT COUNT(*) AS total_count FROM my_table;
Count Records with a Condition
To count records that meet specific conditions, you can use the WHERE clause. For example, to count how many people are over 30 years old:

SELECT COUNT(*) AS count_over_30 FROM my_table WHERE age > 30;

Summary
Create a Database: CREATE DATABASE my_database;
Use the Database: USE my_database;
Create a Table: Define columns and their data types.
Insert Data: Use INSERT INTO to add records.
Query Data: Use SELECT COUNT(*) to get totals, optionally with WHERE for conditions.