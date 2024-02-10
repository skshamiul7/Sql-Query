use bustudentinfo;

create TABLE payment(
customer_id int PRIMARY KEY,
name VARCHAR(30),
mode VARCHAR(30),
city VARCHAR(30)
);

insert into payment values
(101, "Olovia","Netbanking","Portland"),
(102, "Ethane","Credit Card","Miami"),
(103, "Maya","Credit Card","Seattle"),
(104, "Liam","Netbanking","Denvar"),
(105, "Sophia","Credit Card","New Orleans"),
(106, "Clave","Devit Card","Minapollis"),
(107, "Ava","Devit Card","Phonix"),
(108, "Lucas","Netbanking","Boston"),
(109, "Issable","Netbanking","Nashville"),
(110, "Jackson","Credit Card","Boston")
;

SELECT * from payment;
SELECT DISTINCT mode from payment;

SELECT mode, COUNT(customer_id) from payment GROUP BY mode;