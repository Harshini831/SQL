create database harsh;
use harsh;
create table emp
(eid int primary key auto_increment,
ename varchar(50),
department varchar(50),
salary int);

INSERT INTO emp (ename, department, salary) VALUES
('Alice', 'HR', 45000),
('Bob', 'IT', 60000),
('Charlie', 'Finance', 55000),
('Diana', 'Marketing', 50000),
('Eve', 'IT', 62000);

INSERT INTO emp (ename, department, salary) VALUES('Ana','HR',50000);
SELECT * FROM emp;

create table project
(pid int,
pname varchar(50),
Aid int,
foreign key (Aid) references emp(eid));

INSERT INTO project (pid, pname, Aid) VALUES
(1, 'Website Development', 2),
(2, 'Mobile App Design', 4),
(3, 'Database Migration', 3),
(4, 'Marketing Campaign', 5),
(5, 'Employee Training', 1);
INSERT INTO project (pid, pname, Aid) VALUES(6,'website development',2);


SELECT * FROM project;

select* from emp
inner join project on
emp.eid=project.aid;

select emp.ename,emp.department 
from emp
inner join project on 
emp.eid=project.aid; 

select * from emp
left join project on
emp.eid=project.aid order by ename; 

select * from emp
right join project on
emp.eid=project.aid order by ename; 

select * from emp
left join project on
emp.eid=project.aid
 union 
select * from emp
right join project on
emp.eid=project.aid order by ename;

alter table project add primary key(pid);
create table bud(pid int,foreign key(pid)references project(pid),eid int,foreign key (eid)references emp(eid),budget int);

INSERT INTO bud (pid, eid, budget) VALUES
(1, 2, 150000),
(2, 4, 200000),
(3, 3, 120000),
(4, 5, 180000);

SELECT * FROM bud;

select * from project
right join bud on
project.pid=bud.pid
right join emp on 
bud.eid=emp.eid;

 
 




