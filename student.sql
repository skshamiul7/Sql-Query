create database college_info;

use college_info;

create table student (
rollno int primary key,
name varchar(30),
mark float not null,
grade varchar(5) not null,
city varchar(30)
);

insert into student (rollno,name,mark,grade,city)
values 
(101, "anil", 78, "C", "pune"),
(102, "bhumika", 82, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "vumi", 96, "A+", "dellhi"),
(105, "salamn", 12, "F", "dellhi"),
(106, "kapur", 82, "B", "dellhi");

select * from student;

select * from student limit 3;

select * from student order by name asc;
select * from student order by name desc;

select * from student where mark>90;
select * from student where city="dellhi";
select * from student where mark>80 and city="dellhi";

select name,mark from student;




