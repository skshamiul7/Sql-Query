create database useforcustomer;

use useforcustomer;

create table customer(
id int primary key,
customer_name varchar(50),
contact_name varchar(30),
address varchar(40),
city varchar(20),
postalCode varchar(30),
country varchar(20)
);

insert into customer(id,customer_name,contact_name,address,city,postalCode,country)
values
(1,"Alfreds Futterkiste","Maria Anders","Obere Str. 57","Berlin","12209","Germany"),
(2,"Ana Trujillo Emparedados y helados","Ana Trujillo","Avda. de la Constitución 2222","México D.F.","05021","Mexico"),
(5,"Berglunds snabbköp","Christina","Berglund	Berguvsvägen 8","Luleå","S-958 22","Sweden")
;

select * from customer;

drop table customer;