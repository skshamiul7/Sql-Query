use assesment2;

create TABLE customer(
customer_name VARCHAR(30),
customer_street VARCHAR(30),
customer_city VARCHAR(30)
);

CREATE TABLE account(
account_no VARCHAR(20),
customer_name VARCHAR(20),
balance INT
);

INSERT INTO customer VALUES
("somebody","Mirpur Road","Dhaka"),
("somebody","Aga kha road","Bogra"),
("Anybody","XYZ Road","Khagrachori"),
("Nobody","Mirpur Road","Dhaka")
;

INSERT INTO account VALUES
("A-101","Anybody",1000),
("A-102","Anybody",1500),
("A-103","Somebody",2000),
("A-104","Nobody",2500)
;

SELECT * from customer;
SELECT * from customer ORDER BY customer_name;
SELECT DISTINCT customer_street from customer;
SELECT * from account;

SELECT * FROM customer where customer_city IN("Dhaka");
SELECT * FROM customer where customer_city="Dhaka" OR customer_city="bogra";

SELECT * FROM account where balance >=2000;

CREATE TABLE result(
student_name VARCHAR(40),
marks FLOAT
);

INSERT INTO result VALUES
("A",55),
("B",90),
("C",40),
("D",80),
("E",85),
("F",95),
("G",82)
;
SELECT * from result;

SELECT * FROM result WHERE marks >80 ORDER BY marks DESC;

SELECT * FROM result WHERE marks >80 ORDER BY marks DESC LIMIT 3;
SELECT * FROM result WHERE marks >80 ORDER BY marks DESC LIMIT 1 OFFSET 1;

SELECT COUNT(DISTINCT student_name) FROM result WHERE marks >= 80;
