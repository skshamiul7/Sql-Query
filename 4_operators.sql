use bustudentinfo;

insert into info values
(18,"shamiul",3.94),
(14,"angela",2.94)
;

select * from info;

select * from info where name="sabbir" and gpa=3.5;
select * from info where name="sabbir" or gpa=2.5;
select * from info where gpa>2.5;
select * from info where gpa<3.5;
select * from info where gpa<=3.5;
select * from info where gpa>=3.5;

select * from info where gpa between 2.60 and 3.78;

select * from info where name in ("shamiul","sabbir","angela","perosnY");
select * from info where name  not in ("shamiul","sabbir","perosnY");


