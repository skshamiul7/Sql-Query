CREATE DATABASE tryforeignkey;
use tryforeignkey;

CREATE TABLE depertment(
course_id int PRIMARY KEY,
name VARCHAR(20)
);

CREATE TABLE teacher(
id int PRIMARY key,
name VARCHAR(30),
dept_id INT,
Foreign KEY (dept_id)REFERENCES depertment(course_id)
ON UPDATE CASCADE
ON DELETE CASCADE
);

INSERT INTO depertment VALUES
(101,"science"),
(102,"arts"),
(103,"Comerse")
;
UPDATE depertment set course_id=111 where course_id=102;

INSERT INTO teacher VALUES
(1,"anis",102),
(2,"jon",101),
(3,"ruby",101),
(4,"dyrooth",103),
(5,"aurora",102)
;

SELECT * FROM depertment;
SELECT * FROM teacher;
