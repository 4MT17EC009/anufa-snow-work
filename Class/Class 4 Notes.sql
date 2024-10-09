DISTINCT KEYWORD
>> Distinct keyword is used to display the UNIQUE VALUES
SELECT DISTINCT (city) FROM customers;
SELECT DISTINCT (Deopartment_ID) FROM employees;

GROUP BY 
The GROUP BY clause in SQL is used to arrange identical data into groups, typically in conjunction with aggregate functions. This allows you to perform calculations on grouped data, such as counting, summing, or averaging.

Example : 
SELECT department_id, COUNT(*) FROM employees
GROUP BY department_id;

Key Components
SELECT: Lists the columns to be returned.
aggregate_function: Functions like COUNT, SUM, AVG, MAX, or MIN that perform calculations on the grouped data.
FROM: Specifies the table from which to retrieve data.
WHERE: (Optional) Filters records before grouping.
GROUP BY: Specifies the column(s) by which to group the result set.

>> Where Class is not going to work when it comes to Group By, we need to use having

--- Identify Duplicate Names (INTERVIEW QUESTION)
Step 1 > Group by (Count of Names)
Step 2 > Having count >=1

SUB queries
Subqueries in SQL are queries nested inside another SQL query. They can be used in various parts of a SQL statement, such as the SELECT, WHERE, and FROM clauses. Subqueries help simplify complex queries by breaking them into manageable parts and can return individual values, lists of values, or tables.
> First Sub Query will get Executed and then the Main Query

A correlated subquery is a type of subquery that references a column from the outer query. This means the subquery depends on the outer query for its values, and it runs once for each row processed by the outer query.


CASE STATEMENTS
The CASE statement in SQL is a powerful tool used for conditional logic within queries. It allows you to create new columns or modify existing ones based on specific conditions. The CASE statement can be used in the SELECT, WHERE, ORDER BY, and other clauses.
Similar to IF ELSE STATEMENTS

The CASE statement in SQL is a way to implement conditional logic in your queries. It allows you to evaluate conditions and return different results based on those conditions. You can use CASE statements in various parts of your SQL queries, such as the SELECT, WHERE, and ORDER BY clauses.
EXAMPLES:

SELECT employee_name,
       CASE department_id
           WHEN 1 THEN 'Sales'
           WHEN 2 THEN 'Marketing'
           WHEN 3 THEN 'HR'
           ELSE 'Other'
       END AS department_name
FROM employees;

SELECT employee_name, salary,
       CASE
           WHEN salary < 30000 THEN 'Low'
           WHEN salary BETWEEN 30000 AND 60000 THEN 'Medium'
           WHEN salary > 60000 THEN 'High'
           ELSE 'Not Specified'
       END AS salary_category
FROM employees;




