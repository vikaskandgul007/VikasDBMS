

create database Assignment1;
show databases;
use assignment1;

create table Member(
mem_ID int (5) primary key,
mem_name varchar (30),
mem_addr varchar(50),
acc_open_date date,
mem_type varchar (20),
Penalty_amt int(7)
);

desc member;
show databases;
use assignment1;
===========================================================
create table Books(
book_no int(6)primary key,
book_name varchar(30),
author_name varchar(30),
cost int (7),
category char(10)
);
show tables;
desc books;
use assignment1;
===========================================================
create table issue(
lib_iisue_id int (10),
book_no int (5),
mem_id int (5),
issue_date date,
return_date date
);
desc issue;
===========================================================
select *  from member;
alter table member drop column Penalty_amt;
insert into member values 
(1, "Richa Sharma","Pune", 2005-12-10, "Lifetime"),
(2, "Garima Sen", "Pune", 2019-04-24, "Annual"),
(3, "Somnath Narote", " Pune", 2018-06-18, "Lifetime"),
(4, "Vyanktesh Disilva", "Solapur", 2018-07-12, "Quarterly"),
(5, "Charudatta Mendis", "Solapur", 2019-08-23, "Half Quarterly");
select * from member;
============================================================
insert into books values
(101, "Let us C", "Denis Ritchie", 450, "System"),
(102, "Oracle-Complete Ref", "Loni", 550, "Database"),
(103, "Mastering SQL", "Loni", 250, "Database"),
(104, "PL-SQL Ref", "ScottUrman", 750, "Database");
select * from books;
update books set cost = 300 where book_no = 103;
============================================================
drop table issue;
create table issue(
Lib_issue_ID int (6),
Book_no int(10),
Mem_ID int (10),
Issue_date date,
Return_date date
);
=============================================================
insert into issue (Lib_issue_ID, Book_no, Mem_ID, Issue_date) 
values (1001, 101, 1, current_date()),
(1002, 102, 2, current_date()),
(1003, 104, 1, current_date()),
(1004, 101, 1, current_date()),
(1005, 104, 2, current_date()),
(1006, 101, 1, current_date());

select * from issue;