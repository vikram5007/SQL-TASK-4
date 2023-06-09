CREATE SCHEMA DAY4
CREATE table DAY4.worker(
WORKER_ID INT NOT NULL PRIMARY KEY ,
FIRST_NAME VARCHAR(25),
LAST_NAME VARCHAR(25),
SALARY MONEY,
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25)
);

INSERT INTO DAY4.Worker 
(WORKER_ID,FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES 
(001,'Monika', 'Arora', 100000, '2014-05-20 09:00:00', 'HR'), 
(002,'Niharika', 'Verma', 80000, '2014-05-21 09:00:00', 'Admin'), 
(003,'Vishal', 'Singhal', 300000, '2014-05-22 09:00:00', 'HR'), 
(004,'Amitabh', 'Singh', 500000, '2014-05-23 09:00:00', 'Admin'), 
(005,'Vivek', 'Bhati', 500000, '2014-05-25 09:00:00', 'Admin')

INSERT INTO DAY4.Worker 
(WORKER_ID,FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES 
(006, 'Vipul', 'Diwan', 200000, '2000-02-02', 'Account'),
(007, 'Satish', 'Kumar', 75000, '2000-02-02', 'Account'),
(008, 'Geetika', 'Chauhan', 90000, '2000-02-02', 'Admin');
select * from DAY4.worker 

CREATE TABLE Bonus (

WORKER_REF_ID INT, BONUS_AMOUNT INT, BONUS_DATE DATETIME, FOREIGN KEY (WORKER_REF_ID)
REFERENCES DAY4.Worker(WORKER_ID) ON DELETE CASCADE);

INSERT INTO Bonus(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE)VALUES(001,	5000,	'2016-02-02'),(002,	3000,	'2016-06-01'),(003,	4000,	'2016-02-02'),(001,	4500,	'2016-02-02'),
(002,	3500,	'2016-06-01');

select * from Bonus

CREATE TABLE Title (

WORKER_REF_ID INT, WORKER_TITLE CHAR(25),
AFFECTED_FROM DATETIME, FOREIGN KEY (WORKER_REF_ID)
REFERENCES DAY4.Worker(WORKER_ID) ON DELETE CASCADE
);

INSERT INTO Title

(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES

(001, 'Manager', '2016-02-20 00:00:00'),

(002, 'Executive', '2016-06-11 00:00:00'),

(008, 'Executive', '2016-06-11 00:00:00'),

(005, 'Manager', '2016-06-11 00:00:00'),

(004, 'Asst. Manager', '2016-06-11 00:00:00'),

(007, 'Executive', '2016-06-11 00:00:00'),

(006, 'Lead', '2016-06-11 00:00:00'),

(003, 'Lead', '2016-06-11 00:00:00');

select * from Title

select FIRST_NAME as WORKER_NAME from DAY4.worker  --ALLASES 

select FIRST_NAME as LOWERCASE_NAME,upper(FIRST_NAME) as UPPERCASE_NAME from DAY4.worker --TRANSFORM

SELECT DISTINCT DEPARTMENT AS VAR_DEPARTMENTS FROM DAY4.worker  --DISTINCT 

select FIRST_NAME,SUBSTRING(FIRST_NAME,1,3) AS SUBSTRING_VALUE FROM DAY4.worker --SUBSTRING

select distinct DEPARTMENT,LEN(DEPARTMENT) AS LENGTH from DAY4.worker   --LENGTH

select concat (FIRST_NAME,' ',LAST_NAME)AS COMPLETE_NAME from DAY4.worker --CONCAT

select * from DAY4.worker where FIRST_NAME='VIPUL' OR FIRST_NAME='SATISH' --FIRST NAME 

select * from DAY4.worker where DEPARTMENT='admin' --DEPARTMENT NAME 

select * from DAY4.worker where FIRST_NAME like '%a' --LAST LETTER VALUES 

select * from DAY4.worker where FIRST_NAME like '%a%' --A OCCURENCES VALUES 






