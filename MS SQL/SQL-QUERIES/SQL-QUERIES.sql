--Create database command
CREATE DATABASE DB2

--USE DATABSE COMMAND
USE DB2

--Create table command
CREATE TABLE student1(
	id int primary key,
	class varchar(50),
	age int,
	program varchar(50)
);

--Now perform CRUD
--Insert Command 
insert into student1(id,class,age,program)
values 
(2,'12th',13,'FSC-Pre-Medical'),
(3,'11th',18,'ICS'),
(4,'11th',17,'FSC-Pre-Medical'),
(5,'12th',19,'FA'),
(6,'12th',13,'FSC-Pre-Medical');

--select command(Read operation)
select * from student1;

--delete commad & 
delete from student1 where age = 13;

--Update commad
update student1 
set program = 'ICS(Physics)'
where id = 5;

--1.where clause (its actually a condition where you are restrict the query to row)
--2.use any operator in row
--SELECT * 
--FROM Employees
--WHERE Department = 'Marketing' AND Salary > 50000;

--UPDATE Employees
--SET Salary = Salary * 1.05
--WHERE Department = 'Sales';

--DELETE FROM Employees
--WHERE Salary = 0;
--NOTE:-above are usecases of where clause

--order by statment(always use with select statment) 
select * from student1
order by age desc;

select * from student1
order by age asc;

--Aggregate function
--1.SUM()
SELECT SUM(id) AS [id's Sum]
FROM student1;
--2.AVG()
SELECT AVG(id) AS Average
FROM student1;
--3.min()
SELECT min(id) AS [minimum value]
FROM student1;
--4.max()
SELECT max(id) AS [maximum value]
FROM student1;
--5.count()
SELECT count(id) AS [counting rows]
FROM student1;

--Numeric Function
select ABS(-10) , CEILING(25.56), CEILING(25.15), FLOOR(76.12), SIGN(10) , SIGN(-10) , SIGN(0)
,square(9) , sqrt(81) , PI(), COS(15) , SIN(90) , TAN(45), EXP(1);

--String Function
select len(program) from student1;
select upper(program) from student1;
select lower(program) from student1;
select LTRIM('       Computer');
select RTRIM('Computer       ');
select substring('Computer',3,4);
select Replace('Computer','puter','munication');
select replicate('Computer',5);


select * from student1 where class = '12th' AND program = 'FSC-Pre-Medical';
select * from student1 where class = '12th' OR program = 'FSC-Pre-Medical';
select * from student1 where NOT class = '12th';
select * from student1 where NOT class = '11th';
select * from student1 where class != '11th';
select * from student1 where class <> '11th';

select GETDATE() , CURRENT_TIMESTAMP , SYSDATETIME();

SELECT DATENAME(MONTH,CURRENT_TIMESTAMP) AS [MONTH];
SELECT DATENAME(YEAR,CURRENT_TIMESTAMP) AS [YEAR];
SELECT DATENAME(HOUR,CURRENT_TIMESTAMP) AS [HOUR];

SELECT DATEDIFF(YEAR,'OCTOBER 2 2004',CURRENT_TIMESTAMP) AS MyAge;
SELECT DATEDIFF(YEAR,'OCTOBER 2 2004',CURRENT_TIMESTAMP) + 10 AS MyAgeAfter10Years;
SELECT DATEDIFF(MONTH,'OCTOBER 2 2004',CURRENT_TIMESTAMP) AS MyAge;
SELECT DATEDIFF(DAY,'OCTOBER 2 2004',CURRENT_TIMESTAMP) AS MyAge;
SELECT DATEDIFF(MONTH,'OCTOBER 2 2004','OCTOBER 10 2004') AS MyAge;
SELECT DATEDIFF(DAY,'OCTOBER 2 2004','OCTOBER 10 2004') AS MyAge;

SELECT DATEADD(YEAR,10,CURRENT_TIMESTAMP) AS CurrentDatefter10Years;
SELECT DATEADD(YEAR,10,'OCTOBER 2 2004') AS MyBirthDateAfterYears;

SELECT DateName(Year,DATEADD(YEAR,10,CURRENT_TIMESTAMP));
SELECT DateName(Month,DATEADD(MONTH,10,CURRENT_TIMESTAMP));

SELECT [PROGRAM],Count(id) AS [Total Students]
FROM student1
GROUP BY program
HAVING Count(id) > 2;

Select Top(3) id From student1;
Select Top(3) id From student1 Order by id DESC;
Select Top(3) id From student1 Order by id Asc;

Select * Into student1 From DB2.dbo.student1;
Select id,age Into studentidage From DB2.dbo.student1;

Alter table student1 ADD Student_Name Varchar(50);
Alter table student1 ADD Email Varchar(50) CHECK (Email like '%@%.%' );
Alter table student1 ADD Phone Varchar(12) Constraint chk_phone CHECK (Phone like '%-%');
update student1 set Email = 'sdgdfgsgg@gmail.com' where id = 2;

Alter table student1 Drop Column Student_Name;
Alter table student1 Drop Constraint chk_phone;
Alter table student1 Drop Constraint chk_phone;
Alter table student1 Drop Constraint CK__student1__Email__6754599E;
Alter table student1 Drop Column Email,Phone;


Alter table student1 Alter Column Email varchar(30);