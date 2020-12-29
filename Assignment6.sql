create database assignment6;
use assignment6;
use assignment5;
delimiter $$
create function my_fun_1(a int(10)) returns int (10)
begin
declare factorial int(10) default 1;
test_loop:repeat
set factorial = factorial * a;
set a = a-1;
until a=1
end repeat;
return factorial;
end $$

select my_fun_1(4);
drop function my_fun_2;
delimiter $$
create function my_fun_2(n int(5)) returns varchar(15)
begin
declare flag  int(2) default 1;
declare i int(2) default 2;
while i<n 
do
	if n % i = 0 then
		set flag = 0;
	end if;
    set i = i+1;
    end while;
if flag =1 then
return "prime number";
else
return "not prime number";
end if;
end $$

select my_fun_2(4);

delimiter $$
create function fun_3(inches int (10)) returns varchar(50)
begin
declare yard int(10);
declare foot int(10);
set yard = inches/36;
set inches =inches % 36;
set foot = inches / 12;
set inches = inches % 12;
return concat(yard, ' yards ',foot, ' foot ',inches, ' inches');
end $$ 
select fun_3(125);

delimiter $$
create function salary(deptid int3) RETURNS VARCHAR(50)
begin
update emp set salary=(salary+(salary*0.1)) where deptno=deptno;
return 'update';
end $$
 drop procedure salary;
select * from emp;

select salary(10);


delimiter $$
create procedure rev (inout str varchar(50))
begin
if isnull(str) then
	set str ='STRING IS NULL';
    else if(str ='') then
    set str ='STRING IS NULL';
else
	set str = (select reverse (str));
end if;
end if;
end $$
set @str=null;
call rev(@rev);
select @rev as rev;


delimiter $$
CREATE PROCEDURE tabledetails()
BEGIN
SHOW TABLES;
END $$

CALL tabledetails;