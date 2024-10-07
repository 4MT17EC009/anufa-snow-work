Select * from employees

select distinct (department_id) from employees

select count (department_id) from employees

select department_id, count (*) from employees
group by department_id

select salary, count(*) from employees
group by salary

select hire_date, count(*) from employees
group by hire_date
order by 2 DESC

select department_id, count (*) from employees
group by department_id
having count (*) > 5

------Identifying duplicate names -----------

select * from employees
select first_name from employees

select distinct (first_name) from employees

duplicates >>> repeated value

select first_name, count (*) from employees
group by first_name
having count (*) > 1

select department_id, count (*) from employees
group by department_id
having count (*) > 5

select Max(salary) from employees

SELECT * FROM EMPLOYEES  WHERE SALARY  = (SELECT MAX(SALARY)  FROM EMPLOYEES )

SELECT MAX(SALARY) FROM EMPLOYEES  WHERE SALARY  NOT IN (SELECT MAX(SALARY)  FROM EMPLOYEES )

SELECT * FROM EMPLOYEES WHERE SALARY IN 
(SELECT MAX(SALARY) FROM EMPLOYEES  
   WHERE SALARY  NOT IN (SELECT MAX(SALARY)  FROM EMPLOYEES ))

SELECT * FROM EMPLOYEES  WHERE DEPARTMENT_ID  IN (
             SELECT DEPARTMENT_ID FROM EMPLOYEES 
                        GROUP BY DEPARTMENT_ID 
                        HAVING  COUNT(*) > 5 )

SELECT DEPARTMENT_ID FROM EMPLOYEES 
           GROUP BY DEPARTMENT_ID 
            hAVING  COUNT(*) > 5 

select * from dependents
select * from employees

SELECT * FROM EMPLOYEES   WHERE EMPLOYEE_ID   IN ( SELECT EMPLOYEE_ID FROM DEPENDENTS)

SELECT * FROM EMPLOYEES   WHERE EMPLOYEE_ID  NOT  IN ( SELECT EMPLOYEE_ID FROM DEPENDENTS)

SELECT * FROM EMPLOYEES A 
      WHERE A. EMPLOYEE_ID IN (SELECT B.EMPLOYEE_ID FROM DEPENDENTS B  WHERE  A.EMPLOYEE_ID = B.EMPLOYEE_ID)

SELECT * FROM EMPLOYEES 

SELECT EMPLOYEE_ID , FIRST_NAME,SALARY 
      , (CASE WHEN SALARY  > 10000 THEN 'Sr Software'   else  'Jr software'  end ) as designation from employees

create table Numbers (num int) 

insert into Numbers (num) values (1),(2),(3),(4),(5),(6),(7),(8),(-10),(11),(-200),(300),(4000)

select * from numbers

ALTER TABLE numbers
ADD Pos_or_Neg INT;

Select * from NUMBERS

alter table numbers
drop column pos_number

alter table numbers
drop column neg_number

select * from numbers

IF (num > 0)
        PRINT ("positive")
    ELSE
       PRINT ("negative")
       
       
    CASE WHEN  num> 0  THEN "positive" ELSE "Negative"
    end

    
    SELECT 
    COUNT(CASE WHEN NUM > 0 THEN 1 END) AS positive_count,
    COUNT(CASE WHEN NUM < 0 THEN 1 END) AS negative_count
FROM numbers;


SELECT 
    (CASE WHEN NUM > 0 THEN 1 END) AS positive_count,
    (CASE WHEN NUM < 0 THEN 1 END) AS negative_count
FROM numbers;

select * from NUMBERS

select num ,
      case 
        when num = 1 then 'Monday'
        when num = 2 then 'Tues'
        when num = 3 then 'Wed'
        when num = 4 then 'thur'
        when num = 5 then 'fri'
        when num = 6 then 'sat'
        when num = 7 then 'sun'
        
        else 'invalid day'
      end    as weekday
from numbers

select * from employees

--------Based on department print highest salary---
SELECT department_id, MAX(salary) AS highest_salary
FROM employees
GROUP BY department_id;

-------print all the employee data based on deptid who is having highest salary---

select * from employees
WHERE department_id = 9
AND salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE department_id = 9
);

select department_id from employees

select * from employees
WHERE department_id = 6
AND salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE department_id = 6
);

select * from employees
WHERE department_id = 10
AND salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE department_id = 10
);

select * from employees
WHERE department_id = 3
AND salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE department_id = 3
);

select * from employees
WHERE department_id = 5
AND salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE department_id = 5
);

select * from employees
WHERE department_id = 8
AND salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE department_id = 8
);

select * from employees
WHERE department_id = 5
AND salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE department_id = 5
);

select * from employees
WHERE department_id = 1
AND salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE department_id = 1
);

select * from employees
WHERE department_id = 2
AND salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE department_id = 2
);

select * from employees
WHERE department_id = 4
AND salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE department_id = 4
);

select * from employees
WHERE department_id = 7
AND salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE department_id = 7
);

select * from employees
WHERE department_id = 11
AND salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE department_id = 11
);

--print all the employee data based on deptid who is having lowest salary--

select * from employees
WHERE department_id = 9
AND salary = (
    SELECT MIN(salary)
    FROM employees
    WHERE department_id = 9
);

select * from employees
WHERE department_id = 6
AND salary = (
    SELECT MIN(salary)
    FROM employees
    WHERE department_id = 6
);

select * from employees
WHERE department_id = 10
AND salary = (
    SELECT MIN(salary)
    FROM employees
    WHERE department_id = 10
);

select * from employees
WHERE department_id = 3
AND salary = (
    SELECT MIN(salary)
    FROM employees
    WHERE department_id = 3
);

select * from employees
WHERE department_id = 5
AND salary = (
    SELECT MIN(salary)
    FROM employees
    WHERE department_id = 5
);

select * from employees
WHERE department_id = 8
AND salary = (
    SELECT MIN(salary)
    FROM employees
    WHERE department_id = 8
);

select * from employees
WHERE department_id = 1
AND salary = (
    SELECT MIN(salary)
    FROM employees
    WHERE department_id = 1
);

select * from employees
WHERE department_id = 2
AND salary = (
    SELECT MIN(salary)
    FROM employees
    WHERE department_id = 2
);

select * from employees
WHERE department_id = 4
AND salary = (
    SELECT MIN(salary)
    FROM employees
    WHERE department_id = 4
);

select * from employees
WHERE department_id = 7
AND salary = (
    SELECT MIN(salary)
    FROM employees
    WHERE department_id = 7
);

select * from employees
WHERE department_id = 11
AND salary = (
    SELECT MIN(salary)
    FROM employees
    WHERE department_id = 11
);