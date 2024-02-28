use assesment2;

create table student(
id int,
name VARCHAR(30)
);

CREATE TABLE courses(
id int,
course VARCHAR(30),
address VARCHAR(30)
);

INSERT INTO student values 
(10,'rofik'),
(12,'sofik'),
(13,'toufik'),
(15,'bablu'),
(17,'hablu')
;

INSERT INTO courses values
(11,'cse','dhaka'),
(10,'it','comillah'),
(15,'bba','kulna'),
(19,'law','jessore')
;

SELECT * FROM student;
SELECT * FROM courses;

-- inner join
SELECT * FROM student INNER JOIN courses on student.id=courses.id;

-- now using alises
SELECT * FROM student as s INNER JOIN courses as c on s.id=c.id;

-- left join
SELECT * FROM student as s LEFT JOIN courses as c on s.id=c.id;

-- right join
SELECT * FROM student RIGHT JOIN courses on student.id=courses.id;

-- full join
SELECT * from student as s LEFT join courses as c on s.id=c.id
union
SELECT * FROM student as s right JOIN courses as c on s.id=c.id;

-- left exclusive join
SELECT * FROM student left JOIN courses on student.id=courses.id where courses.id is null;
SELECT * FROM courses left JOIN student on student.id=courses.id where student.id is null;


-- right exclusive 
SELECT * FROM student as s right join courses as c on s.id=c.id WHERE s.id is null;

--
CREATE TABLE employee
(
id int primary KEY,
name VARCHAR(30),
manager_id int
);

INSERT INTO employee VALUES 
(101,'adam',103),
(102,'BOB',104),
(103,'Casey',NULL),
(104,'DONALD',103)
;

SELECT * FROM employee;

-- self join
SELECT * FROM employee as a join employee as b on a.id=b.manager_id;

SELECT a.name as manager_name,b.name FROM employee as a join employee as b on a.id=b.manager_id;

-- union
SELECT name from employee union SELECT name FROM employee;
SELECT name from employee union all SELECT name FROM employee;

SELECT name FROM employee UNION SELECT name FROM student;




