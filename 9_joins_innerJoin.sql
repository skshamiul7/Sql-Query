use assesment2;

CREATE TABLE cricket (
id int PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(30)
);

CREATE TABLE football(
id int PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(30)
);

CREATE TABLE badminton(
id int PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(30)
);


insert into cricket (name) VALUES
('john'), ('emily'), ('mickle'),('sara'),('david'),('jessica');

insert into football (name) VALUES
('jon'), ('mickle'),('pablo'),('norman'),('david'),('emily');

insert into badminton (name) VALUES
('snow'),('pablo'),('edit'),('clark'),('Ixia');

SELECT * FROM cricket;
SELECT * FROM football;
SELECT * FROM badminton;


SELECT  c.id,c.name,f.id,f.name FROM cricket as c inner JOIN football as f on c.name=f.name ;
SELECT  c.id,c.name,f.id,f.name FROM cricket as c inner JOIN football as f USING(name);


SELECT  c.id,c.name,b.id,b.name FROM football as c inner JOIN badminton as b USING(name);




