use bustudentinfo;

SELECT * FROM student;

UPDATE student_info set age=24 where id=5;

ALTER TABLE student ADD COLUMN age INT NOT NULL DEFAULT 20;

ALTER TABLE student DROP COLUMN age;

ALTER TABLE student_info RENAME to student;

ALTER TABLE student CHANGE COLUMN age stdage VARCHAR(3);

ALTER TABLE student CHANGE stdage age int;
