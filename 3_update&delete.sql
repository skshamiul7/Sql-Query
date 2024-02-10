create database BuStudentInfo;
use BuStudentInfo;

create table info(
Id int primary key,
Name varchar(30),
Gpa varchar(20)
);

insert into info values
(01,"sabbir",3.5),
(03,"shamiul",2.5),
(05,"noma",3.59),
(08,"roma",2.89),
(11,"Diana",3.89),
(15,"angela",2.65)
;

drop table info;
select * from info;

update info set name="sk shamiul islam", gpa=3.89 where id=03;
update info set name="Mst something", gpa=2.99 where id=08;

delete from info where gpa=3.89;
delete from info where id=07;

set sql_safe_updates=0;			-- for turn off safe update mode





