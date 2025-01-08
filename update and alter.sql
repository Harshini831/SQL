create database employee;
use employee;
CREATE TABLE Operations (EmployeeID INT,Name VARCHAR(50),Department VARCHAR(50));
show tables;
INSERT INTO Operations (EmployeeID, Name, Department) VALUES(1, 'John Doe', 'HR');
INSERT INTO Operations (EmployeeID, Name, Department) VALUES(2, 'Jane', 'IT');
INSERT INTO Operations (EmployeeID, Name, Department) VALUES(3, 'Mary Johnson', 'HR');
INSERT INTO Operations (EmployeeID, Name, Department) VALUES(4, 'Robert Brown', 'Finance');
INSERT INTO Operations (EmployeeID, Name, Department) VALUES(5, 'Emily Davis', 'IT');
INSERT INTO Operations (EmployeeID, Name, Department) VALUES(6, 'Michael Wilson', 'HR');
INSERT INTO Operations (EmployeeID, Name, Department) VALUES(7, 'Sarah Moore', 'Operations');
INSERT INTO Operations (EmployeeID, Name, Department) VALUES(8, 'William Taylor', 'HR');
INSERT INTO Operations  VALUES(9, 'Sophia Lee', 'IT');
INSERT INTO Operations VALUES(10, 'James Anderson', 'Finance');
select* from Operations;
UPDATE Operations
SET Department = 'Operations'
WHERE Department = 'HR';
ALTER TABLE Operations ADD joining_date DATE;

UPDATE Operations
SET joining_date = '2023-11-01' where salary=20000; 

ALTER TABLE Operations ADD salary INT;
 
UPDATE Operations
SET salary = 160000 where Department='IT'; 

ALTER TABLE Operations ALTER COLUMN Department SET DEFAULT 'General';


INSERT INTO Operations (EmployeeID, Name) VALUES
(11, 'Anna Scott'),
(12, 'Chris Evans');
select * from Operations;

create table course (cid int primary key,cname varchar(50),noofhour int);
insert into course(cid,cname,noofhour) values (1,'java',20),(2,'python',30),(3,'sql',30),(4,'web',12);
alter table operations 
add column ncourse varchar(20);

alter table operations
add constraint fk_operations
foreign key(ncourse)
references course(cid);


