>> SET OPERATORS
-- Set operators in SQL are used to combine the results of two or more SELECT queries. The primary set operators are:
>> UNION
>> UNION All
>> INTERSECT
>> MINUS

--- UNION ---
>> Going to fetch all the values from the table without Duplicates, Duplicates/common values will be ignored

--- UNION ALL ---
Irrespective of single/Duplicate values everything is going to fetch

--- INTERSECT ---
Only the Common Values are going to be displayed

--- MINUS ---
The values should be present in A Table but Not in B Table (A - B)
The values should be present in B Table but not in A Table (B - A)
>> Duplicate values will not be displayed

>>COLUMNS AND DATA TYPE TO BE MATCHED IN SET OPERATORS

>> WINDOWS Functions
Window functions in SQL allow you to perform calculations across a set of rows related to the current row, without collapsing the result set. They are useful for tasks like running totals, moving averages, and ranking. Here are some key aspects of window functions:
>> ROW number
>> DENSE Rank
>> Rank

--- ROW NUMBER ---
It Assigns unique sequence values in a continuous Manner 1,2,3, ... for each rows irrespective od duplicate/common values
If No Duplicates ROW_Number will work
>> Syntax
SELECT EMPLOYEE_ID,
       FIRST_NAME,
       Salary
       ROW_NUMBER OVER (ORDER BY SALARY DESC) AS RID
       FROM EMPLOYESS

--- DENSE RANK ---
 If Its same values, It will assign same rank and will continue to provide, there is no Rank skip
 Used when Duplicates be present
 >> SELECT EMPLOYEE_ID,
       FIRST_NAME,
       Salary
       DENSE_RANK OVER (ORDER BY SALARY DESC) AS RID
       FROM EMPLOYESS


>> COMMON TABLE EXPRESSION
--- To Fetch the values, 5th or 6th values we should go with COMMON TABLE EXPRESSION ---
 A Common Table Expression (CTE) is a temporary result set that you can reference within a SQL statement. It is defined using the WITH clause and can simplify complex queries, improve readability, and facilitate recursive queries.
 >> WITH CTE_EMP AS
    (SELECT EMPLOYEE_ID,
       FIRST_NAME,
       Salary
       DENSE_RANK OVER (ORDER BY SALARY DESC) AS RID
       FROM EMPLOYESS
    ) SELECT * from CTE_EMP where RID = 5
 
 --- RANK ---
 It is similar to Row Number, But assigns the same rank to matching values and leaves a gap for the next rank

>> Lead and LAG 

The LEAD and LAG functions in SQL are window functions that allow you to access data from subsequent or preceding rows in a result set 
They are particularly useful for comparing values in a row to those in other rows within the same result set.
LEAD: Accesses data from a subsequent row in the result set.
>> Example: If you want to compare the current day's sales with the next day's sales

LAG: Accesses data from a preceding row in the result set.
>> Example: If you want to compare the current day's sales with the previous day's sales





