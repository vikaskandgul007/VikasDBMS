create database Assignment5;
use assignment5;

create table emp(
empno int(5) not null,
ename varchar(30) not null,
job varchar(10),
mgr int(4),
hiredate date,
salary int(7),
deptno int(2)
);
desc emp;
insert into emp values
(1000,' Manish',' Salesman',1003,'2020-02-18',600,30),
(1001, ' Manoj',' Salesman',1003,'2018-02-18',600,30),
(1002,' Ashish',' Salesman',1003,'2013-02-18',750,30),
(1004,' Rekha',' Analyst',1006,'2001-02-18',3000,10),
(1005,' Sachin',' Analyst',1006,'2019-02-18',3000,10),
(1006,' Pooja',' Manager',null,'2000-02-18',6000,10);
select * from emp;

create table dept(
dno int(4) not null,
dname varchar(10) not null,
area varchar(30)
);
desc dept;
insert into dept values
(10,'Store','Mumbai'), (20,'Purchase','Mumbai'),
(30,'Store','Delhi'), (40,'Marketing','pune'),
(50,'Finance','Delhi'), (60,'Accounts','Mumbai');
select * from dept;

Delimiter $$
create procedure Q1(IN A INT,IN B INT)
begin
select A+B;
select A-B;
select A*B;
select A/B;
end $$

call Q1(10,20);

delimiter $$
create procedure Q2(inout str varchar(30))
begin 
set str = (select reverse(str));
end $$
set @str = 'database';
call Q2(@str);
select @str as rev;

delimiter $$
create procedure Q3()
begin
select empno, ename, salary from emp order by salary desc limit 5;
 end $$
 call Q3;

delimiter $$ 
create procedure Q4()
create table emp_test(emp_id int, ename varchar(10), ejoining_date date);
end $$
call Q4;


delimiter $$
create procedure Q5(inout num int, out sqr int, out cube1 int)
begin
declare num1 int;
set num1 = num;
select num, power(num,2),power(num,3) into num, sqr, cube1;
end $$
set @num=3;
call Q5(@num,@sqr,@cube1);
select @num,@sqr,@cube1;


delimiter $$
 create procedure Q6()
 begin
 insert into dept(dno,dname,area)values(70,'Mechanical','Solapur');
end $$
select * from dept;
drop procedure Q6;

delimiter $$
create procedure Q7(out ans int)
begin
declare num int;
set num=2;
select num into ans;
end $$

call Q7(@ans);
select @ans;


delimiter $$
create procedure Q8(in x int,out str varchar(50))
begin
select concat(ename,' is from ',dname) into str from emp e inner join dept d on d.dno=e.deptno where e.deptno = x and e.empno = 1004;
end $$

drop procedure Q8;

call Q8(10,@str);
select @str;

