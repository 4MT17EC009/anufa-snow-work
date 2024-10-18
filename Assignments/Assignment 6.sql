 Set Operators :
-----------------
UNION
UNION ALL
INTERSECT
MINUS

 Windows Functions     :
-----------------------
ROW_NUMBER
DENSE_RANK
RANK

SELECT * FROM EMPLOYEES 

SELECT * FROM DEPENDENTS

>> Union

SELECT FIRST_NAME  FROM EMPLOYEES 
       UNION
SELECT FIRST_NAME FROM DEPENDENTS

>> Union All

SELECT FIRST_NAME  FROM EMPLOYEES 
       UNION ALL
SELECT FIRST_NAME FROM DEPENDENTS

SELECT EMAIL , FIRST_NAME  FROM EMPLOYEES 
       UNION ALL
SELECT FIRST_NAME, LAST_NAME FROM DEPENDENTS

>> Intersect Operator

SELECT FIRST_NAME  FROM EMPLOYEES 
       INTERSECT 
SELECT FIRST_NAME FROM DEPENDENTS

>> Minus Operator

SELECT FIRST_NAME  FROM EMPLOYEES 
       MINUS  
SELECT FIRST_NAME FROM DEPENDENTS

CREATE OR REPLACE TABLE EMP  AS 
     SELECT * FROM EMPLOYEES 

SELECT * FROM EMP 

DELETE FROM EMP WHERE EMPLOYEE_ID  < 200

SELECT * FROM EMP 
    UNION 
SELECT * FROM EMPLOYEES 

SELECT * FROM EMP 
    UNION  ALL 
SELECT * FROM EMPLOYEES 

SELECT * FROM EMP 
    INTERSECT 
SELECT * FROM EMPLOYEES    

SELECT FIRST_NAME FROM EMP 
    MINUS 
SELECT lAST_NAME  FROM EMPLOYEES 

SELECT EMPLOYEE_ID ,SALARY FROM EMPLOYEES  ORDER BY 2 DESC 

SELECT EMPLOYEE_ID,FIRST_NAME,SALARY FROM EMPLOYEES ORDER BY SALARY DESC 

>>> Row Number and Dense Rank Functions
>>> Row number provides sequential values internally irrespective of Duplicates, 1,2,3,..
>>> Dense Rank - If same values/duplicate values it provides same rank/number
No Rank skip in both 

SELECT EMPLOYEE_ID,FIRST_NAME,SALARY FROM EMPLOYEES ORDER BY SALARY DESC 

SELECT EMPLOYEE_ID,
      FIRST_NAME,
      SALARY ,
      ROW_NUMBER() OVER(ORDER BY SALARY DESC ) AS RID
      FROM EMPLOYEES 

SELECT EMPLOYEE_ID,
      FIRST_NAME,
      SALARY ,
      DENSE_RANK() OVER(ORDER BY SALARY DESC )  AS RID
      FROM EMPLOYEES 

SELECT EMPLOYEE_ID,
      FIRST_NAME,
      SALARY ,
      RANK() OVER(ORDER BY SALARY DESC )  AS RID
      FROM EMPLOYEES 

>>>If No duplicates you can go with Row Number and Rank. if suplicates are present consider DENSE RANK

>> to fetch 5th Value

WITH CTE_EMP AS 
(
SELECT EMPLOYEE_ID,
      FIRST_NAME,
      SALARY ,
      DENSE_RANK() OVER(ORDER BY SALARY DESC )  AS RID
      FROM EMPLOYEES 
)   SELECT * FROM CTE_EMP WHERE RID = 2

SELECT EMPLOYEE_ID,
      FIRST_NAME,
      SALARY ,
      DENSE_RANK() OVER(ORDER BY SALARY DESC )  AS RID
      FROM EMPLOYEES 

In SQL, LEAD and LAG are both window functions that allow you to access data from different rows in relation to the current row without the need for a self-join. They are particularly useful for performing calculations and comparisons across rows in a result set.

>> LEAD: Accesses data from a subsequent row (i.e., a row that follows the current row).
>> LAG: Accesses data from a previous row (i.e., a row that precedes the current row).

SELECT EMPLOYEE_ID ,SALARY FROM EMPLOYEES  ORDER BY 2 DESC 

SELECT EMPLOYEE_ID,
      FIRST_NAME,
      SALARY ,
      DENSE_RANK() OVER(ORDER BY SALARY DESC )  AS RID
      FROM EMPLOYEES 

WITH SalarySums AS (
    SELECT
        employee_id,
        first_name,
        salary,
        SUM(salary) OVER (ORDER BY employee_id) AS TotalSalary
    FROM Employees
)