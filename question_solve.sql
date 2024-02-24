/*
Question link - https://www.slideshare.net/MichaelBelete/sql-queries-questions-and-answers
*/
CREATE DATABASE my_work;
USE my_work;

CREATE TABLE Location(
Location_id int PRIMARY key,
Regional_group VARCHAR(50)
);

CREATE TABLE Depertment(
Depertment_id int PRIMARY key,
Name VARCHAR(50),
Location_id int,
FOREIGN KEY (Location_id) REFERENCES Location(Location_id)
);

CREATE TABLE Job(
Job_id int PRIMARY key,
Functions VARCHAR(30)
);

CREATE TABLE Employe(
Employe_id int PRIMARY key NOT NULL,
Last_name VARCHAR(30),
First_name VARCHAR(30),
Middle_name VARCHAR(10),
Job_id int,
Manager_id int,
HireDate VARCHAR(30),
Salary FLOAT,
Comm VARCHAR(20) DEFAULT 'null',
Depertment_id int,
FOREIGN KEY (Job_id)REFERENCES Job(Job_id),
FOREIGN KEY (Depertment_id) REFERENCES Depertment(Depertment_id)
);

INSERT INTO Location VALUES
(122,"New Yourk"),
(123,"Dallas"),
(124,"Chicago"),
(167,"Boston")
;

INSERT INTO Depertment VALUES
(10,"Accounting",122),
(20,"Research",124),
(30,"Seals",123),
(40,"Operation",167)
;

INSERT INTO Job VALUES
(667,"Clerk"),
(668,"Staff"),
(669,"Analysist"),
(670,"SalesPerson"),
(671,"Manager"),
(672,"Presedient")
;

INSERT INTO Employe (Employe_id, Last_name, First_name, Middle_name, Job_id, Manager_id, HireDate, Salary,comm, Depertment_id)
VALUES 
(7369, 'Smith', 'John', 'Q', 667, 7902, '17-Dec-84', 800,DEFAULT, 20),
(7499,'Allen','Kevin','J',670,7698,'20-Feb-85,',1600,300,30),
(7505,'Doyle','Jean','K',671,7839,'4-Apr-85',2850,DEFAULT,30),
(7506,'Dennis','Lynn','S',671,7839,'15-May-85',2750,DEFAULT,30),
(7507,'Bakar','Leslie','D',671,7839,'10=Jun-85',2200,default,40),
(7521,'Wark','Cyane','G',670,6842,'22-Feb-85',1250,500,30)
;

SELECT * FROM Location;
SELECT * FROM Depertment;
SELECT * FROM Job;
SELECT * FROM Employe;

SELECT first_name,Last_name,salary,comm FROM employe;

SELECT first_name,salary from employe;

SELECT employe_id,last_name,depertment_id from employe;

ALTER TABLE employe CHANGE COLUMN employe_id ID int;
ALTER TABLE employe CHANGE COLUMN last_name Name_Of_The_Employe VARCHAR(30);
ALTER TABLE employe CHANGE COLUMN depertment_id depertment_ID int;

SELECT name_of_the_employe,salary*12 from employe GROUP BY name_of_the_employe,salary;

SELECT * from employe WHERE name_of_the_employe='smith';
SELECT * from employe WHERE depertment_id=20;
SELECT * from employe WHERE salary BETWEEN 3000 and 4500;

SELECT * from employe WHERE depertment_id=10 or depertment_id=20;		-- same operations
SELECT * from employe WHERE depertment_id in (30,10);

SELECT * from employe WHERE depertment_id  not in (30,10);			-- same operations
SELECT * from employe WHERE ! (depertment_id=10 or depertment_id=30); 
SELECT * from employe WHERE depertment_id!=10 and depertment_id!=30; 

SELECT * FROM employe where name_of_the_employe LIKE 's%';
SELECT * FROM employe where name_of_the_employe LIKE 'w_%k';

SELECT * FROM employe where depertment_id=30 and salary>2500;
SELECT * FROM employe where comm = 'null';
SELECT * FROM employe where comm is null;

SELECT id,name_of_the_employe FROM employe ORDER BY name_of_the_employe;
SELECT id,name_of_the_employe,salary,comm FROM employe ORDER BY name_of_the_employe desc;
SELECT * from employe ORDER BY name_of_the_employe asc, salary desc; 
SELECT * from employe ORDER BY name_of_the_employe asc, id desc; 

SELECT count(id),Depertment_id from employe GROUP BY Depertment_id;
SELECT DISTINCT(Depertment_id) from employe; 







