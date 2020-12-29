create database Assignment3;
use Assignment3;
create table Department(
dept_id int(5) not null primary key,
dept_name varchar(20)
);
desc Department;
insert into Department values 
(1, "Finance"),
(2, "Training"),
(3, "Marketing");
select * from Department;


use Assignment3;
create table Employee(
emp_id int(5),
emp_name varchar(20),
dept_id int(5),
salary int(5),
manager int(5)
);

insert into Employee values
(1, "Arun", 1, 8000, 4),
(2,	"kiran", 1, 7000, 1),
(3,	"Scott", 1,	3000, 1);
insert into Employee (emp_id, emp_name, dept_id, salary) values 
(4, "Max", 2, 9000);
insert into Employee values
(5, "Jack", 2, 8000, 4);
insert into Employee (emp_id, emp_name, salary, manager) values
(6, "King", 6000, 1);

select * from Employee;
alter table Employee add foreign key (dept_id)
references Department (dept_id);
desc Employee;

select salary from Employee order by salary;
select salary from Employee order by salary desc;

select *,sum(salary), dept_id from Employee group by dept_id;
select dept_id,sum(salary) from Employee where salary >= 17000 group by dept_id;
-- select dept_id,sum(salary) from Employee where salary < 18000 group by dept_id;

select dept_id, sum(salary) from Employee group by dept_id having sum(salary) > 18000;
select dept_id, sum(salary) from Employee group by dept_id having sum(salary) < 20000;