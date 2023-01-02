create database CQA;
use CQA;

create table User
(UserId int,
Username varchar(20),
primary key(UserID)
);
select * from User;
insert into User(UserId,Username) values('1','swarna'),
('2','amith'),
('3','kavya'),
('4','swaroop'),
('5','mayur'),
('6','hrudhya');

drop table user;

create table User
(UserId int,
Username varchar(20),
Phone_number varchar(10),
Email varchar(40),
Address varchar(50), 
primary key(UserID)
);
select * from user;
insert into User(UserId,Username,Phone_number,Email,Address) values('1','swarna','98777777','swa@gmail.com','blore'),
('2','amith','98777766','amith@gmail.com','blore'),
('3','kavya','000000000','kavya@gmail.com','chennai'),
('4','swaroop','985555555','swaroop@gmail.com','shmg'),
('5','mayur','234556788','mayur@gmail.com','dvg'),
('6','hrudhya','987877587','hru@gmail.com','blore');

update User set Email='swarna@gmail.com' where UserId='1';
select * from user;
Alter table User add City varchar(20);

truncate table User;
select * from User;

delete from User where UserId=1;
select * from user;
update User set Phone_number='988067774' where UserId=3;
Alter table User add State Varchar(15);

call get_value;
call stu;