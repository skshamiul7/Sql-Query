use bustudentinfo;

create table student_info(
id int PRIMARY KEY,
name VARCHAR(40),
stream VARCHAR(20),
avgmark VARCHAR(20),
grade VARCHAR(10),
class VARCHAR(10),
city VARCHAR(20)
);

insert INTO student_info values
(1,"Karan","medical",78.5,"B","11B","pune"),
(2,"Divakar","commerce",89.2,"A","9A","mumbai"),
(3,"Diviya","commerce",68.3,"C","10A","dellhi"),
(4,"Arun","humanitis",90.5,"A+","10B","mumbai"),
(5,"Sabina","nonmedical",78.5,"B","12C","dellhi"),
(6,"Jhon","medical",75.9,"B","11A","dellhi"),
(7,"Robert","humanitis",64.8,"C","9C","pune"),
(8,"Rubina","nonmedical",88.5,"A","11A","dellhi"),
(9,"Vikas","nonmedical",92.0,"A+","12C","mumbai"),
(10,"Mohan","commerce",56.5,"D","10B","mumbai")
;

SEleCt * FROM student_info;

UPDATE student_info set grade="F",avgmark=40.0 WHERE id=6;

SELECT stream, count(id) from student_info GROUP BY stream ORDER BY stream ASC; 

SELECT stream, MAX(avgmark),COUNT(id) from student_info GROUP BY stream ORDER BY stream DESC;

SELECT grade, COUNT(name) from student_info GROUP BY grade ORDER BY grade;

SELECT city, COUNT(id) from student_info GROUP BY city HAVING max(avgmark) > 90; 

SELECT city FROM student_info WHERE grade="A" GROUP BY city HAVING max(avgmark)>80 ORDER BY city;  

