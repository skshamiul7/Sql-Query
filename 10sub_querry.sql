use college_info;

SELECT * FROM student;

SELECT avg(mark) from student;

SELECT name,mark FROM student where mark >72.5;

-- using sub querries
SELECT name,mark FROM student where mark > (SELECT avg(mark) from student);

--
SELECT rollno from student WHERE rollno % 2 =0;
SELECT rollno from student WHERE rollno % 2 !=0;

SELECT name,rollno from student where rollno IN (SELECT rollno from student WHERE rollno % 2 =0);
SELECT name,rollno from student where rollno IN (SELECT rollno from student WHERE rollno % 2 !=0);

--
SELECT max(mark) FROM student where city='dellhi';

SELECT * from student WHERE city='dellhi';

SELECT * from student where mark in (SELECT max(mark) FROM student where city='dellhi');

-- using from
SELECT max(mark) FROM (SELECT * from student WHERE city='dellhi') AS temp;
SELECT * FROM student 









