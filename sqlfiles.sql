-- ejet database --
create database Ejet;
use Ejet;

create table Engineer_Details(Engineer_ID int ,
Engineer_Name varchar(40),
Mobile_Number varchar(10),
Qualification varchar(50),
Experience varchar(20),
Primary key(Engineer_id));

select * from Engineer_Details;

Insert into  Engineer_Details(Engineer_ID,Engineer_Name,Mobile_Number,Qualification,Experience)
 values
 (1,'swarna',7687586547,'BE','1 year'),
 (2,'swaroop',8889789652,'BE','3 years'),
 (3,'anusha',9578908916,'BE','5 years'),
 (4,'soumya',9876543210,'B','6 years');
 
 create table contact_details(Engineer_ID int, contact_id int primary key,foreign key(Engineer_ID)
references Engineer_Details(Engineer_ID));

insert into contact_details(Engineer_ID,contact_id) values (1,101),(2,102),(3,103),(4,104);
select * from contact_details;

-- (STORED pROCEDURES) --

-- 1.get all details --
call get_all_details('swarna',@total_row);

-- 2. insert --
call insert_details(6,'aryan','9875643210','BE','6 years');


-- 3.update --
call update_details(8261457890,'aryan');

-- 4 delete --
call delete_details(5);

