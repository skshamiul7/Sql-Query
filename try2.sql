create database college;

use college;

create table teacher (
id int primary key,
salary float default 25000
);

insert into teacher(id,salary)
values
(1,15000),
(2,18500)
;

INSERT INTO teacher (id) VALUES (3);

select * from teacher;

drop table teacher;
