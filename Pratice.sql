/* SQL FOREIGN KEY Constraint
  A FOREIGN KEY is a key used to link two tables together. */
  
  /* The "PersonID" column in the "Persons" table is the PRIMARY KEY in the "Persons" table.
The "PersonID" column in the "Orders" table is a FOREIGN KEY in the "Orders" table.
The FOREIGN KEY constraint is used to prevent actions that would destroy links between tables. */

create database Tutorial;
Use Tutorial;

create table Person
(Person_ID int primary key not null,
Person_Name varchar (100) not null, 
Person_Age int
);

Insert into Person  
(Person_ID, Person_Name, Person_Age) Values
 (100, "Edward", 22),
  (101, "Robertson", 18),
   (102, "Maxwell", 10),
    (103, "Lectricia", 42), 
    (104, "Sarah", 40);


create table Orders
(Order_ID int not null,
Order_Name varchar (100) not null, 
Order_Date varchar (100) not null,
Person_ID int,
Primary Key (Order_ID),
Foreign Key (Person_ID) References Person (Person_ID)
);


/* To allow naming of a FOREIGN KEY constraint, and for defining 
a FOREIGN KEY constraint on multiple columns, use the following SQL syntax: */

create table Employees
(Employee_ID int not null,
Employee_Name varchar (100) primary key not  null,
Employee_Address varchar (100) not  null);


create table Salaries
(Salary_ID int not null,
Salary_Amount float,
Primary Key (Salary_ID),
Employee_Name varchar (100),
Constraint FK_EmployeesSalaries Foreign Key (Employee_Name) References Employees 
(Employee_Name)
);

/* 
DROP a FOREIGN KEY Constraint
To drop a FOREIGN KEY constraint, use the following SQL: 
*/
Alter Table Salaries 
Drop Foreign Key FK_EmployeesSalaries;



