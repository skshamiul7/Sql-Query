create database Mycompany;
use Mycompany;

create table info(
id int primary key,
name varchar(30),
salary float
);

insert into info(id,name,salary)
values
(1, "addam", 25000),
(2, "bob", 30000),
(3, "casay", 40000),
(4,"addam",352235)
;

select * from info;
delete from info where id=2;
update info set name="shamiul" where id=1;

drop table info;


