CREATE TABLE TABLE_A (NUM INT)

CREATE TABLE TABLE_B (NUM INT)

INSERT INTO TABLE_A  (NUM)   VALUES (1),
(2),(4),(5),(6),(7),(9),(11),(12)

select * from TABLE_A

delete from TABLE_A;

select * from TABLE_A

INSERT INTO TABLE_A (NUM) VALUES (1),
(2),(4),(5),(6),(7),(9),(11),(12)

select * from TABLE_A

delete from table_b

select * from table_b

INSERT INTO TABLE_B  (NUM)   VALUES (1),
(3),(4),(5),(6),(8),(9),(10),(13)

select * from table_b

SELECT A.* ,B.*
     FROM TABLE_A  A  INNER JOIN TABLE_B  B 
    ON A.NUM = B.NUM 

SELECT A.*
     FROM TABLE_A  A  INNER JOIN TABLE_B  B 
    ON A.NUM = B.NUM 

SELECT A.* ,B.*
     FROM TABLE_A  A  LEFT JOIN TABLE_B  B 
    ON A.NUM = B.NUM 

SELECT A.* ,B.*
     FROM TABLE_A  A  RIGHT JOIN TABLE_B  B 
    ON A.NUM = B.NUM 

SELECT A.* ,B.*
     FROM TABLE_A  A  FULL JOIN TABLE_B  B 
    ON A.NUM = B.NUM 

SELF JOIN >>>> Joining the table to itself 

CROSS JOIN >>>> A cross join in SQL is a type of join that produces the Cartesian product of two tables. This means that every row from the first table is combined with every row from the second table.

CREATE table table_a1(NUM INT)

CREATE table table_b1(NUM INT)

INSERT INTO table_a1 (NUM) VALUES(1),(2),(4),(5),(5),(7),(9),(11),(12),(null)

select * from table_a1

INSERT INTO table_b1 (NUM) VALUES(1),(1),(1),(5),(6),(8),(9),(null), (null)

select * from table_b1

SELECT A.* ,B.* FROM table_a1 A INNER JOIN TABLE_b1 B
   ON A.NUM= B.NUM

SELECT A.* ,B.* FROM table_a1 A LEFT JOIN TABLE_b1 B
   ON A.NUM= B.NUM

SELECT A.* ,B.* FROM table_a1 A RIGHT JOIN TABLE_b1 B
   ON A.NUM= B.NUM

SELECT A.* ,B.* FROM table_a1 A FULL JOIN TABLE_b1 B
   ON A.NUM= B.NUM

select count (*) from table_a1
select count (*) from table_b1

SELECT COUNT(*)
FROM TABLE_A1 A INNER JOIN TABLE_b1 B        >>  6
   ON A.NUM= B.NUM

SELECT COUNT(*)
FROM TABLE_A1 A left JOIN TABLE_b1 B        >> 12
   ON A.NUM= B.NUM

SELECT COUNT(*)
FROM TABLE_A1 A RIGHT JOIN TABLE_b1 B          >>10
   ON A.NUM= B.NUM

SELECT COUNT(*)
FROM TABLE_A1 A FULL JOIN TABLE_b1 B             >> 16
   ON A.NUM= B.NUM

   
---- Performing joins on tables -----

SELECT * FROM EMPLOYEES

SELECT * FROM DEPENDENTS

SELECT EMP.* , DEPT.*   FROM  EMPLOYEES  EMP   INNER JOIN DEPENDENTS DEPT
                         ON EMP.EMPLOYEE_ID  = DEPT.EMPLOYEE_ID

SELECT EMP.EMPLOYEE_ID
    ,  EMP.FIRST_NAME 
    ,  EMP.SALARY 
    , DEPT.first_name AS DEPENDENT_NAME 
    , DEPT.RELATIONSHIP  
    FROM  EMPLOYEES  EMP   INNER JOIN DEPENDENTS DEPT
    ON EMP.EMPLOYEE_ID  = DEPT.EMPLOYEE_ID

SELECT EMP.EMPLOYEE_ID
    ,  EMP.FIRST_NAME 
    ,  EMP.SALARY 
    , DEPT.first_name AS DEPENDENT_NAME 
    , DEPT.RELATIONSHIP  
    FROM  EMPLOYEES  EMP   INNER JOIN DEPENDENTS DEPT
    ON EMP.EMPLOYEE_ID  = DEPT.EMPLOYEE_ID
    WHERE EMP.EMPLOYEE_ID  = 110

SELECT EMP.EMPLOYEE_ID
    ,  EMP.FIRST_NAME 
    ,  EMP.SALARY 
    , DEPT.first_name AS DEPENDENT_NAME 
    , DEPT.RELATIONSHIP  
    FROM  EMPLOYEES  EMP   INNER JOIN DEPENDENTS DEPT
    ON EMP.EMPLOYEE_ID  = DEPT.EMPLOYEE_ID
    WHERE EMP.salary  > 10000

SELECT EMP.EMPLOYEE_ID
    ,  EMP.FIRST_NAME 
    ,  EMP.SALARY 
    , DEPT.first_name AS DEPENDENT_NAME 
    , DEPT.RELATIONSHIP  
    FROM  EMPLOYEES  EMP   LEFT JOIN DEPENDENTS DEPT
    ON EMP.EMPLOYEE_ID  = DEPT.EMPLOYEE_ID

SELECT EMP.EMPLOYEE_ID
    ,  EMP.FIRST_NAME 
    ,  EMP.SALARY 
    , DEPT.first_name AS DEPENDENT_NAME 
    , DEPT.RELATIONSHIP  
    FROM  EMPLOYEES  EMP   RIGHT JOIN DEPENDENTS DEPT
    ON EMP.EMPLOYEE_ID  = DEPT.EMPLOYEE_ID

SELECT EMP.EMPLOYEE_ID
    ,  EMP.FIRST_NAME 
    ,  EMP.SALARY 
    , DEPT.first_name AS DEPENDENT_NAME 
    , DEPT.RELATIONSHIP  
    FROM  EMPLOYEES  EMP   FULL JOIN DEPENDENTS DEPT
    ON EMP.EMPLOYEE_ID  = DEPT.EMPLOYEE_ID   

>>>> Join functions on countries and location tables

select * from countries

SELECT A.* ,B.* FROM countries A INNER JOIN locations B
   ON A.country_id= B.country_id

SELECT A.* ,B.* FROM countries A LEFT JOIN locations B
   ON A.country_id= B.country_id

SELECT A.* ,B.* FROM countries A RIGHT JOIN locations B
   ON A.country_id= B.country_id

SELECT A.* ,B.* FROM countries A FULL JOIN locations B
   ON A.country_id= B.country_id

-----------SQL Practice -----------

show tables

select * from persons

>>> Insert Data Only in Specified Columns

INSERT INTO Persons(P_Id, LAST_NAME, FIRST_NAME) VALUES (5, 'Tjessem', 'Jakob')

select * from persons

>>> Update Statement

UPDATE Persons
SET Address='Nissestien 67', City='Sandnes'
WHERE LAST_NAME='Tjessem' AND FIRST_NAME='Jakob'

select * from persons

>> SQL UPDATE Warning ---> Be careful when updating records. If we had omitted the WHERE clause in the example above, like this:

UPDATE Persons
SET Address='Nissestien 67', City='Sandnes'

select * from persons

>>> The DELETE Statement

drop table persons

show tables

create table Persons (P_id int, Last_name varchar(10), First_Name varchar (10), Address string, City String) 

select * from persons

insert into Persons (P_id, Last_name, First_Name , Address, City) VALUES (1, 'Hansen', 'Ola', 'Timoteivn 10', 'Sandnes'), (2, 'Svendson', 'Tove', 'Borgvn 23', 'Sandnes' ), (3, 'Pettersen', 'Kari', 'Storgt 20', 'Stavanger')

select * from persons

INSERT INTO Persons VALUES (4,'Nilsen', 'Johan', 'Bakken 2', 'Stavanger')

select * from persons
INSERT INTO Persons(P_Id, Last_Name, First_Name) VALUES (5, 'Tjessem', 'Jakob')

UPDATE Persons
SET Address='Nissestien 67', City='Sandnes'
WHERE Last_Name='Tjessem' AND First_Name='Jakob'

select * from persons

DELETE FROM Persons
WHERE Last_Name='Tjessem' AND First_Name='Jakob'

select * from persons

>>> Delete All Rows
Syntax > DELETE FROM table_name
or
DELETE * FROM table_name

>>>> The TOP Clause
The TOP clause is used to specify the number of records to return.

SELECT *
FROM Persons
LIMIT 5

>>> SQL TOP Example
Now we want to select only the two first records in the table above.

SELECT TOP 2 * FROM Persons

>>> SQL TOP PERCENT Example

SELECT TOP 50 PERCENT *FROM Persons >> Error - From

>>> SQL Wildcards
SQL wildcards can be used when searching for data in a database.
➢ SQL wildcards can substitute for one or more characters when searching for data in a database.

>>>Using the % Wildcard

Select * from PERSONS

SELECT * FROM Persons
WHERE Lower (City) LIKE 'sa%'

SELECT * FROM Persons
WHERE lower (City) LIKE '%nes%'

>>> Using the _ Wildcard

SELECT * FROM Persons
WHERE FIRST_NAME LIKE '_la'

SELECT * FROM Persons
WHERE LAST_NAME LIKE 'S_end_on'

>>> Using the [charlist] Wildcard

SELECT * FROM Persons

SELECT * FROM Persons                        >>ERROR
WHERE LAST_NAME LIKE '[BSP]%'            

> last name that do not start from b,s,p

SELECT * FROM Persons
WHERE LAST_NAME LIKE '[!bsp]%'                    >>Error

>>>  The LIKE Operator

SELECT * FROM Persons
WHERE City LIKE 'S%'

SELECT * FROM Persons
WHERE City LIKE '%s'

SELECT * FROM Persons
WHERE City LIKE '%tav%'

SELECT * FROM Persons
WHERE City NOT LIKE '%tav%'

>>>IN OPERATOR

SELECT * FROM Persons
WHERE LAST_NAME IN ('Hansen','Pettersen')

>>>>The BETWEEN Operator

SELECT * FROM Persons
WHERE LAST_NAME
BETWEEN 'Hansen' AND 'Pettersen'

SELECT * FROM Persons
WHERE LAST_NAME
NOT BETWEEN 'Hansen' AND 'Pettersen'

>>> SQL Alias

SQL Alias Syntax for Tables:

SELECT column_name(s)
FROM table_name
AS alias_name

>>>>>> SQL JOIN

SQL joins are used to query data from two or more tables, based on a relationship between certain
columns in these tables.
The JOIN keyword is used in an SQL statement to query data from two or more tables, based on a
relationship between certain columns in these tables.

Select * from persons

create table Orders (O_Id int, OrderNo int, P_Id int)

insert into Orders (O_Id , OrderNo , P_Id ) values (1,77895,3), (2, 44678,3), (3, 22456, 1), (4, 24562,1), (5, 34764, 15)

Select * from ORDERS

SELECT Persons.Last_Name, Persons.FIRST_NAME, Orders.OrderNo
FROM Persons INNER JOIN Orders ON Persons.P_Id=Orders.P_Id
ORDER BY Persons.LAST_NAME

SELECT Persons.Last_Name, Persons.FIRST_NAME, Orders.OrderNo
FROM Persons LEFT JOIN Orders ON Persons.P_Id=Orders.P_Id
ORDER BY Persons.LAST_NAME

SELECT Persons.Last_Name, Persons.FIRST_NAME, Orders.OrderNo
FROM Persons RIGHT JOIN Orders ON Persons.P_Id=Orders.P_Id
ORDER BY Persons.LAST_NAME

SELECT Persons.Last_Name, Persons.FIRST_NAME, Orders.OrderNo
FROM Persons FULL JOIN Orders ON Persons.P_Id=Orders.P_Id
ORDER BY Persons.LAST_NAME

