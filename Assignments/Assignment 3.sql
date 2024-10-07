show tables;

select * from employees;

Select Employee_id, first_name, Salary from employees;

Select Employee_id, first_name, Salary from employees where employee_id = 105
                                                            OR employee_id = 107

Select Employee_id, first_name, Salary from employees where employee_id in (105, 107, 120, 130)

Select Employee_id, first_name, Salary from employees where salary >= 20000

Select Employee_id, first_name, Salary from employees where salary <= 10000

Select Employee_id, first_name, Salary from employees where (salary >= 10000 and salary <=20000)

Select Employee_id, first_name, Salary from employees where (salary >= 10000 and salary <=20000)
order by SALARY DESC

Select Employee_id, first_name, Salary from employees where (salary >= 10000 and salary <=20000)
order by 2, 3

Select top 5 * from employees

Select top 10 * from employees

Select top 5 Employee_id, first_name, Salary from employees
order by salary DESC

Select top 5 Employee_id, first_name, Salary from employees
order by salary 

select * from employees where manager_id is null

select * from employees where manager_id is not null

select * from employees where phone_number is not null

select * from employees where phone_number is null

select count (*) from employees

select count (phone_number) from employees
select count (manager_id) from employees
select count (First_name) from employees

select * from employees 

select Max(salary) from employees
select MIN(salary) from employees  

select SUM(salary) from employees

select SUM(salary) AS "total amount" from employees

Select top 5 Employee_id as "EID", first_name as "f_name", Salary as "Sal" from employees

>>> String Functions 

Select first_name from employees
Select upper (first_name) from employees

Select lower (first_name) from employees

select count (first_name) from employees

select len (first_name) from employees

select concat (FIRST_NAME, last_name) from employees 

select substring (FIRST_NAME, 1,3) from employees

select trim(first_name) from employees

SELECT REPLACE(email, 'david.austin@sqltutorial.org', 'anufaraziyan@sqltutorial.org') AS new_email FROM employees;

select *from employees
SELECT POSITION('Luis' IN first_name) AS position FROM employees;

Select lower (last_name) from employees
SELECT * FROM employees WHERE LOWER(last_name) = 'austin';

SELECT first_name from employees where first_name like 'S%'

SELECT first_name from employees where first_name like '%n'

-----------------------------------
show tables

select * from persons

Alter table persons
drop column location_id

select *from persons

SELECT Last_Name, FIRST_NAME FROM Persons

SELECT * From Persons

SELECT DISTINCT City FROM Persons

SELECT * FROM Persons
WHERE City='Sandnes'

SELECT * FROM Persons
WHERE City='Stavanger'

SELECT * FROM Persons WHERE FIRST_NAME='Tove'

SELECT * FROM Persons
WHERE FIRST_NAME='Tove'AND LAST_NAME='Svendson'

SELECT * FROM Persons
WHERE FIRST_NAME='Tove' OR FIRST_NAME='Ola'

SELECT * FROM Persons
WHERE LAST_NAME='Svendson' AND (FIRST_NAME='Tove' OR FIRST_NAME='Ola')

SELECT * FROM Persons ORDER BY LAST_NAME

SELECT * FROM Persons ORDER BY LAST_NAME DESC

INSERT INTO Persons (P_id, Last_name, First_Name , Address, City) VALUES (4,'Nilsen', 'Johan', 'Bakken 2', 'Stavanger')

SELECT * from persons