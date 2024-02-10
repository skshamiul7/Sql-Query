create database hello; 		/*create database */
-- cretae table
use hello;				

create table student (
id int primary key,
name varchar(30),
age int not null
);

insert into student (id,name,age)
values(2021,"sabbir",23), (21,"Noman",19);

insert into student values(2022,"shamiul",34);
insert into student values(2024,"shamiul",34);

select * from student;

drop table student;

create database if not exists hello;
drop database if exists hello;



