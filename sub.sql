use abc;
create table student(sid int primary key auto_increment,sname varchar(100),
age int,city varchar(100),state varchar(100),mobile bigint,email varchar(100),
course_opt int,address varchar(100),otherinfo varchar(100),address_updated date);
desc student;

INSERT INTO student (sname, age, city, state, mobile, email, course_opt, address, otherinfo, address_updated)
VALUES
('Amit Kumar', 21, 'Delhi', 'Delhi', 9876543210, 'amit.kumar@example.com', 101, '123 Street, Delhi', 'Prefers online classes', '2024-12-01'),
('Sita Sharma', 22, 'Mumbai', 'Maharashtra', 9876543211, 'sita.sharma@example.com', 102, '456 Lane, Mumbai', 'Wants hostel', '2024-12-02'),
('Rohan Das', 23, 'Bangalore', 'Karnataka', 9876543212, 'rohan.das@example.com', 103, '789 Avenue, Bangalore', 'Vegetarian', '2024-12-03'),
('Meena Patel', 20, 'Ahmedabad', 'Gujarat', 9876543213, 'meena.patel@example.com', 104, '321 Drive, Ahmedabad', 'Needs scholarship', '2024-12-04'),
('Arjun Rao', 24, 'Hyderabad', 'Telangana', 9876543214, 'arjun.rao@example.com', 105, '654 Street, Hyderabad', 'Requires flexible timings', '2024-12-05'),
('Divya Nair', 22, 'Chennai', 'Tamil Nadu', 9876543215, 'divya.nair@example.com', 106, '987 Road, Chennai', 'Fluent in English', '2024-12-06'),
('Rahul Gupta', 21, 'Pune', 'Maharashtra', 9876543216, 'rahul.gupta@example.com', 107, '123 Colony, Pune', 'Wants evening classes', '2024-12-07'),
('Neha Singh', 23, 'Lucknow', 'Uttar Pradesh', 9876543217, 'neha.singh@example.com', 108, '456 Street, Lucknow', 'Needs transport facility', '2024-12-08'),
('Karan Thakur', 20, 'Jaipur', 'Rajasthan', 9876543218, 'karan.thakur@example.com', 109, '789 Street, Jaipur', 'Prefers in-person lectures', '2024-12-09'),
('Priya Reddy', 22, 'Kochi', 'Kerala', 9876543219, 'priya.reddy@example.com', 110, '321 Road, Kochi', 'Interested in extracurriculars', '2024-12-10');
select * from student;

select sname,age from student where age>(select avg(age) from student);
select sname,age from student where age<(select avg(age) from student);
 select sname,course_opt from student where course_opt=101;
 select * from student where course_opt=
 
 

