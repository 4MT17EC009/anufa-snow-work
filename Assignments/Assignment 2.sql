Use HR;

create table jobs (job_id int, job_name varchar(10), Max_salary decimal(10,2))

select * from jobs;

insert into jobs (job_id, job_name, Max_salary) VALUES (101, 'DEV', 30000), (103, 'snowflake', 40000), (105, 'sql', 20000), (106, 'web', 10000)

select * from jobs;

ALTER table jobs 


select * from JOBS;

insert into jobs (job_id, job_name, Max_salary, Min_salary) VALUES (10, 'DEV', 30000, 1000), (13, 'snowflake', 40000, 2000), (15, 'sql', 20000, 3000), (16, 'web', 10000, 5000)

alter table jobs
drop column Max_salary

ALTER table jobs 
add column Max_salary decimal (10,2)

select * from jobs;

delete from jobs where job_id in (13,15)

truncate table jobs;

insert into jobs (job_id, job_name, Max_salary, Min_salary) VALUES (10, 'DEV', 30000, 1000), (13, 'snowflake', 40000, 2000), (15, 'sql', 20000, 3000), (16, 'web', 10000, 5000)

select * from jobs;

describe table jobs;

drop table jobs;
select * from jobs;
create table jobs (job_id int, job_name varchar(10), Max_salary decimal(10,2))

insert into jobs (job_id, job_name, Max_salary) VALUES (101, 'DEV', 30000), (103, 'snowflake', 40000), (105, 'sql', 20000), (106, 'web', 10000)

select * from jobs;
ALTER table jobs 
add column Min_salary decimal (10,2)


insert into jobs (job_id, job_name, Max_salary, Min_salary) VALUES (10, 'DEV', 30000, 1000), (13, 'snowflake', 40000, 2000), (15, 'sql', 20000, 3000), (16, 'web', 10000, 5000)

select * from jobs;

update jobs
set min_salary = 12000 where job_id = 101

select * from jobs;

drop table jobs;

undrop table jobs;

create table Persons (P_id int, Last_name varchar(10), First_Name varchar (10), Address string, City String) 

insert into Persons (P_id, Last_name, First_Name , Address, City) VALUES (1, 'Hansen', 'Ola', 'Timoteivn 10', 'Sandnes'), (2, 'Svendson', 'Tove', 'Borgvn 23', 'Sandnes' ), (3, 'Pettersen', 'Kari', 'Storgt 20', 'Stavanger')

select * from persons;


