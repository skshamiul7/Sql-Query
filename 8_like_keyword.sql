use my_work;

CREATE TABLE names(
fname VARCHAR(30),
lname VARCHAR(30)
);

create table trynull(
name VARCHAR(10),
age int DEFAULT NULL
);

INSERT INTO trynull values
('abdul',25),
('abdXX',DEFAULT),
('abdvv',DEFAULT)
;

SELECT * from trynull;

SELECT * from trynull WHERE age is NULL;
SELECT * from trynull WHERE age ='null';

INSERT INTO names values
('Abdul','khan'),
('bablu','rahman'),
('zoker','burg'),
('joshim','hossain'),
('aldous','northan')
;

SELECT * from names;

SELECT * FROM names WHERE fname like 'a%';
SELECT * FROM names WHERE fname like 'a_%s';

TRUNCATE TABLE names;