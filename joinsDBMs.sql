create database class2;
use class2;
create table user
(UserId int,
Username varchar(20),
primary key(UserId)
);
select * from user;
insert into user(UserID,Username) values
('1','Swarna'),
('2','Swaroop'),
('3','amith'),
('4','meena'),
('5','Sathish');
drop table user;

create table playlist
(UserId int,
PlaylistId int primary key,
PlaylistName varchar(30),
foreign key(UserId) references User(UserId)
);
drop table playlist;
select * from playlist; 
insert into playlist(UserId,PlaylistId,PlaylistName) values
('1','101','Devotional Songs'),
('2','102','Hit Songs'),
('3','103','Pop music'),
('4','104','old Hit Songs');

select * from user left join playlist on User.UserId=playlist.PlaylistId;


create table tracks
(PlaylistId int,
TrackId varchar(10) primary key,
foreign key(PlaylistId) references playlist(PlaylistId)
);
drop table tracks;
select * from tracks;
Alter table tracks add trackName varchar(20);
insert into tracks(PlaylistId,TrackId,trackName) values
('101','a1','abc'),
('102','b1','bcd'),
('103','c1','cde');

select * from user left join playlist on User.UserId=playlist.UserId;
select * from user right join playlist on User.UserId=playlist.UserId;
select * from user inner join playlist on User.UserId=playlist.UserId;

select * from playlist left join tracks on playlist.PlaylistId=tracks.PlaylistId;
select * from playlist right join tracks on playlist.PlaylistId=tracks.PlaylistId;
select * from playlist inner join tracks on playlist.PlaylistId=tracks.PlaylistId;

create database functions;
create schema functions;
use functions;
create table student
(studentid int primary key,
studentName varchar(30),
department varchar(30)
);
select * from student;
Alter table student add salary int;
insert into student(studentid,studentName,department,salary) values
('1','swarna','cs','25000'),
('2','swaroop','bsc','30000'),
('3','kavya','cs','28000'),
('4','vinay','cs','35000'),
('5','amith','cs','25000');

select count(StudentId) total from student;

select sum(StudentId) as sum from student;
select sum(salary) as totalsalary from student;

select avg(StudentId) avg_of from student;
select avg(salary) AverageSalary from student;

select max(StudentId) max_of from student;
select max(salary) MaxofSalary from student;

select min(StudentId) min_of from student;
select min(salary) MinofSalary from student;

select department total from student group by Department;

select count(StudentId),Department total from student group by Department order by StudentId desc;

select studentName from student order by studentName asc;
select studentName from student order by studentName desc;
select studentName from student order by studentName;

--NOT NULL--
create table person(
Id int,
LastName varchar(30) NOT NULL,
FirstName varchar(30),
Phonenumber int);
select * from person;
insert into person values('1','abc','swarna','988755621'),
('2','ab','swaroop','988622110'),
('3','bc','satish','988670621');
insert into person value('5','','amith','988755621');
insert into person(Id,FirstName,Phonenumber) value ('8','shruthi','564364363');
insert into person(Id,LastName,FirstName,Phonenumber) value ('8','hg','shruthi','564364363');

--UNIQUE--
CREATE table teachers
( TeacherId int NOT NULL UNIQUE,
TeacherName varchar (30),
Department varchar(30)
);
select * from teachers;
insert into teachers values
('1','swapna','cs'),
('2','rohith','ee'),
('3','ramya','ec');
drop table teachers;
insert into teachers value ('3','ramu','is');
insert into teachers value ('4','raju','bsc');

--CHECK--
create table employee (
Emp_id  int NOT NULL,
EmpName varchar(30) NOT NULL,
salary int CHECK (salary>25000)
);
select * from employee;
insert into employee(Emp_id,EmpName,salary) values
(1,'rekha','20000'),(2,'roopa','30000'),(3,'rekha','40000'),(4,'reshma','25000');

insert into employee(Emp_id,EmpName,salary) values
(1,'rekha','40000'),(2,'roopa','50000'),(3,'rekha','80000'),(4,'reshma','150000');

--Default--

create table doctor(
Id int NOT NULL,
Name varchar(45) NOT NULL,
Specialisation varchar(40),
Hospital varchar(50) DEFAULT 'Apollo'
);
select * from doctor;
drop table doctor;
insert into doctor values (1,'shraddha','cardio','bgs'),(2,'sharanya','radiology','Apollo');
insert into doctor (Id,Name,Specialisation) values (4,'roops','pediatrics'),(3,'sharan','derma');

-- auto increment--
create table company
( 
id int AUTO_INCREMENT PRIMARY KEY,   
Company_Name Varchar(100),  
Company_Area varchar(40),  
Company_Type Varchar(50)
);  
select * from company;
insert into company (Company_Name,Company_Area,Company_type) values
('wipro','btm','software'),('tcs','hsr','software'),('hyundai','mico','car');
insert into company (Company_Area) values
('btm'),('hsr'),('mico');
truncate table company;

-- ENUM CONSTRAINT--
CREATE TABLE shirts (  
    id INT PRIMARY KEY AUTO_INCREMENT,   
    name VARCHAR(35),   
    size ENUM('small', 'medium', 'large', 'x-large')  
);  
select * from shirts;
INSERT INTO shirts(id, name, size)   
VALUES (1,'t-shirt', 'medium'),   
(2, 'casual-shirt', 3),   
(3, 'formal-shirt', 4),   
(4, 'polo-shirt', 'small');


