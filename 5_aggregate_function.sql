use bustudentinfo;

SELECT gpa FROM info;
SELECT MAX(gpa) FROM info;
SELECT MIN(gpa) FROM info;
SELECT SUM(gpa) FROM info;
SELECT AVG(gpa) FROM info;
SELECT COUNT(name) FROM info;

-- group by

CREATE TABLE customer(
id INT PRIMARY KEY,
name VARCHAR(30),
address VARCHAR(50)
);

INSERT INTO customer VALUES
(1,"Alfreds Futterkiste","Uk"),
(2,"Around the Horn ","Germany"),
(3,"Blondel père et fils","Mexico"),
(4,"Bon app","Sweden"),
(5,"B's Beverages ","France"),
(6,"HILARIÓN-Abastos ","Germany"),
(7,"Comércio Mineiro","Spane"),
(8,"LINO-Delicateses","Uk"),
(9,"Rene Phillips","France"),
(10,"John Steel ","Mexico")
;

SELECT * FROM customer;

SELECT address, COUNT(id) from customer GROUP BY address ORDER BY address ASC;
SELECT address,name, COUNT(id) from customer GROUP BY address,name ;

