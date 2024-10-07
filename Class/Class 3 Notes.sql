Definition of DQL
DQL (Data Query Language) is a subset of SQL (Structured Query Language) that is specifically used for querying and retrieving data from a database. DQL primarily consists of the SELECT statement, which allows users to specify the data they wish to retrieve, apply filtering conditions, sort results, and perform aggregate operations. The primary focus of DQL is on accessing and manipulating the data stored in relational databases without altering the database schema or structure.

Key Characteristics of DQL
Data Retrieval: DQL is designed to retrieve data from one or more tables.
Non-Destructive: DQL operations do not change or modify the data within the database.
Filtering and Sorting: DQL allows for the use of conditions to filter results and sort data based on specified criteria.
Aggregation: DQL can perform calculations on data, such as counting, summing, or averaging, to produce summary information.

1. Basic SELECT Statement
The most fundamental operation in DQL is the SELECT statement. It retrieves data from a table.
Syntax:

SELECT column1, column2, ...
FROM table_name;

2. Selecting All Columns
You can retrieve all columns from a table using the * 
Example:

SELECT * FROM employees;

3. Using WHERE Clause
The WHERE clause filters records based on specified conditions.

Syntax:

SELECT column1, column2, ...
FROM table_name
WHERE condition;
Example:

SELECT employee_id, first_name, salary
FROM employees
WHERE Salary >= 20000;

SELECT employee_id, first_name, salary
FROM employees
WHERE employee_id = 105

SELECT employee_id, first_name, salary
FROM employees
WHERE employee_id in (105,107,103)

4. using between clause

SELECT employee_id, first_name, salary
FROM employees
WHERE (Salary >= 10000 and salary <=20000)

5. Sorting Results with ORDER BY
Purpose: Sorts the result set by one or more columns, either ascending or descending.
Syntax:

SELECT column1, column2
FROM table_name
ORDER BY column_name [ASC|DESC];

Example:

SELECT employee_id, first_name, salary
FROM employees
WHERE (Salary >= 10000 and salary <=20000)
ORDER BY Salary DESC

6. if we want just 5 records

SELECT TOP 5 * from employees

7. If null values use IS operator

8. 5. Aggregate Functions
DQL supports various aggregate functions to perform calculations on data:

COUNT(): Counts the number of rows.
SUM(): Calculates the sum of a numeric column.
AVG(): Calculates the average value.
MAX(): Finds the maximum value.
MIN(): Finds the minimum value

9. Alias name to provide > Use AS 




