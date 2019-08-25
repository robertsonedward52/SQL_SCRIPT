create table Class 
(Class_ID int primary key not null,
Class_Name varchar (100) Not null unique
);

create table Subjects 
(Subject_ID int not null,
Subject_Name varchar (50) Not Null,
Subject_Days varchar (50) Not null,
teacher_ID int,
Primary key (Subject_Id),
foreign key (Teacher_ID) references Teachers (Teacher_ID)
);


create table Teachers
(Teacher_ID int not null,
Teacher_Name varchar (100) Not null unique,
Teacher_Age int,
Teacher_Address varchar (100) Not null,
Teacher_City varchar (100) Not null,
class_ID int,
primary key(Teacher_ID),
foreign key (Class_ID) references Class (Class_ID) 
);

insert into class 
(class_ID, class_Name)
values (001, 'Economics');

/*This is these are the details of the teachers*/
insert into teachers  
(Teacher_ID, Teacher_Name, Teacher_Age, Teacher_Address, Teacher_City)
values (101, 'Edward D. Robertson', 22, 'Kantstraße 6a', 'Hamburg');
insert into teachers  
(Teacher_ID, Teacher_Name, Teacher_Age, Teacher_Address, Teacher_City)
values (102, 'Lectrica Robertson', 42, 'Pleebo', 'Harper');
insert into teachers  
(Teacher_ID, Teacher_Name, Teacher_Age, Teacher_Address, Teacher_City)
values (103, 'Reuben K. Kruah', 32, 'Bremener straße 5a', 'Hannover');
insert into teachers  
(Teacher_ID, Teacher_Name, Teacher_Age, Teacher_Address, Teacher_City)
values (104, 'Layee Bility', 22, 'Kantstraße 6a', 'Hamburg');
insert into teachers  
(Teacher_ID, Teacher_Name, Teacher_Age, Teacher_Address, Teacher_City)
values (105, 'Luis Tamba', 31, 'Buchholzer Straße 2a', 'Klecken');

/*This defines the subjects of the week*/
insert into subjects 
(subject_ID, subject_Name, subject_days)
values (201, 'English', 'Monday');
insert into subjects 
(subject_ID, subject_Name, subject_days)
values (202, 'Mathematics', 'Tuesday');
insert into subjects 
(subject_ID, subject_Name, subject_days)
values (203, 'Economics', 'Wednesday');
insert into subjects 
(subject_ID, subject_Name, subject_days)
values (204, 'Biology', 'Thursday');
insert into subjects 
(subject_ID, subject_Name, subject_days)
values (205, 'Geography', 'Friday');

select distinct teacher_city
from teachers;

/* This create an index on the subject table */
create index idx_myindex   
on subjects (subject_name);  

/*This update the teachers city with the id of 101 to Berlin*/
update teachers 
set Teacher_City = 'Berlin'
where Teacher_ID = 101;

select Customer_firstname 
from customers;


/* A view is a Virtual Table, a view made contain row and colums*/
Create View LiberiaCustomer As 
select Customer_age, Customer_LastName
From Customers
Where Customer_firstName = "Edward";

/* We can query the view above as follows: */
select * from LiberiaCustomer;


/*This the like wildcard operator used to compare value */
select * from subjects
where subject_name like 'eng%';

/* TOP clause is used to fetch a TOP Number or X percent records */
select * from teachers
limit 2;

/*Order by used to fetch specity data in an order form*/
select * from teachers
order by Teacher_Name, Teacher_Address;

/*This select all teachers who are from Hamburg*/
select * from teachers
where Teacher_City = "Hamburg";


/* This is used to show table within the database */
show tables; 

/* This is use to show colums from the database */
SHOW columns from Customers; 

/* This used to select multiple columns at once */ 
Select customer_firstName, Customer_lastName, customer_age 
From Customers;

/* The limit keyword return a subset of records */
Select Customer_Id, Customer_firstName
from customers limit 3, 10;

/* This is used to select Distinct records from the table */
 select Distinct Customer_FirstName 
From Customers;

select * from teachers;

/*This defines the and or operator in mTeacher_IDTeacher_IDysql and other DB */
select * from teachers
where teacher_age = 22 
and (Teacher_city = 'Hamburg' or 'Hannover');

/*This defines the teachers column*/
select * from teachers;
select * from subjects;

/*This is used to select the database */
show databases;

/*This drop the table class that was previously created */
drop table class;

/*This is used to delete the teachers column with the ID of 104*/
delete from teachers
where teacher_ID = '104';
