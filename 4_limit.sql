USE bustudentinfo;

SELECT * from info LIMIT 4;

SELECT * FROM info where name in("shamiul","angela");
SELECT * FROM info where name in("shamiul","angela") LIMIT 2;

SELECT * FROM info ORDER BY Name ASC;
SELECT * FROM info ORDER BY Name ASC LIMIT 4;

SELECT * FROM info ORDER BY Name DESC;