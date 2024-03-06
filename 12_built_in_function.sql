USE bustudentinfo;

SHOW DATABASES;
SHOW TABLES;

SELECT * FROM customer;

DESCRIBE customer;

-- Length 
SELECT length('Bangladesh') as Length_of_the_Word;
SELECT name,length(name) as LengthOFtheWord from customer;

-- repeat
SELECT repeat('$  ' ,5) as Repeted;

-- upper & Lower
SELECT name,upper(name) as UpperCase from customer;
SELECT name,lower(name) as LowerCase from customer;

-- Date Funtion
SELECT curdate() as todayDate;
SELECT day(curdate());
SELECT curtime();
SELECT now();
SELECT DATEDIFF('2024-02-17', '2024-02-27');  -- date difference
SELECT DATE_FORMAT('2024-02-17', '%d/%m/%Y'); 
SELECT DATE_FORMAT('2024-02-17', '%M %d, %Y');  
SELECT DATE_FORMAT('2024-02-17', '%Y-%M-%d');
SELECT DATE_ADD('2024-02-17', INTERVAL 10 DAY);
SELECT DATE_SUB('2024-02-17', INTERVAL 7 DAY);

-- concatinate
SELECT concat('My ','name ','is sabbir') as concatinate;
SELECT name,address, concat(name,' ',address) FROM customer;

-- REverse
SELECT  name, reverse(name) FROM customer;

-- Trim function
SELECT ltrim('           hello         ');
SELECT rtrim('          hello         ');
SELECT length(ltrim('           hello         '));
SELECT trim('           hello         ');
SELECT length(trim('           hello         '));


SELECT (10+40) as addition;


-- Replace 
SELECT replace('Orange is vegetable ', 'vegetable ', 'Fruit');

-- position
SELECT position('uit' in 'Orange is fruit');

-- assci values
SELECT ascii('A');



