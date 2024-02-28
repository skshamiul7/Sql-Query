use college_info;

SELECT * FROM student;

CREATE VIEW viewname AS SELECT rollno,name,mark FROM student;

SELECT * FROM viewname;

SELECT * FROM viewname where mark > 90;

DROP VIEW viewname;

