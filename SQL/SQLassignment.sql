create database SQLassignment;

create table Company(
CompanyID int primary key,
CompanyName varchar(45),
Street varchar(45),
City varchar(45),
State varchar(2),
Zip varchar(10));

#---Q1-----
create table Contact(
ContactID int primary key,
CompanyID int,
FirstName varchar(45),
LastName varchar(45),
Street varchar(45),
City varchar(45),
State varchar(2),
Zip varchar(10),
isMain boolean,
Email varchar(45),
Phone varchar(12));

#---Q2---
create table Employee(
EmployeeID int primary key,
FirstName varchar(45),
LastName varchar(45),
Salary decimal(10,2),
HireDate date,
JobTitle varchar(25),
Email varchar(45),
Phone varchar(12));

 #---Q3---
 create table ContactEmployee(
 ContactEmployeeID int primary key,
 ContactID int,
 EmployeeID int,
 ContactDate date,
 Description varchar(100));
 
INSERT INTO Company (CompanyID, CompanyName, Street, City, State, Zip)
VALUES
(1, 'Urban Outfitters, Inc.', '500 Fashion St', 'Philadelphia', 'PA', '19103'),
(2, 'Toll Brothers', '250 Luxury Ave', 'Horsham', 'PA', '19044'),
(3, 'RetailHub', '45 Market Road', 'Chicago', 'IL', '60601');

INSERT INTO Employee
(EmployeeID, FirstName, LastName, Salary, HireDate, JobTitle, Email, Phone)
VALUES
(1, 'Lesley', 'Bland', 65000.00, '2021-06-15', 'Sales Manager', 'lesley.bland@company.com', '215-555-1122'),
(2, 'Jack', 'Lee', 52000.00, '2022-02-10', 'Sales Executive', 'jack.lee@company.com', '215-555-3344');

INSERT INTO Contact
(ContactID, CompanyID, FirstName, LastName, Street, City, State, Zip, IsMain, Email, Phone)
VALUES
(1, 2, 'Dianne', 'Connor', '45 Builder Road', 'Horsham', 'PA', '19044', TRUE, 'dianne.connor@tollbrothers.com', '215-555-7788'),
(2, 2, 'Mark', 'Wilson', '60 Builder Road', 'Horsham', 'PA', '19044', FALSE, 'mark.wilson@tollbrothers.com', '215-555-8899');

INSERT INTO ContactEmployee
(ContactEmployeeID, ContactID, EmployeeID, ContactDate, Description)
VALUES
(1, 1, 2, '2024-01-12', 'Initial sales discussion'),
(2, 2, 1, '2024-01-18', 'Follow-up meeting');

#---Q4---
UPDATE Employee
SET Phone = '215-555-8800'
WHERE FirstName = 'Lesley'
  AND LastName = 'Bland';
  
#---Q5---
UPDATE Company
SET CompanyName = 'Urban Outfitters'
WHERE CompanyName = 'Urban Outfitters, Inc.';

#---Q6---
DELETE FROM ContactEmployee
WHERE ContactEmployeeID = 1;

select * from ContactEmployee;

#---Q7---
SELECT DISTINCT e.FirstName, e.LastName
FROM Employee as e
JOIN ContactEmployee as ce ON e.EmployeeID = ce.EmployeeID
JOIN Contact as c ON ce.ContactID = c.ContactID
JOIN Company as co ON c.CompanyID = co.CompanyID
WHERE co.CompanyName = 'Toll Brothers';  

#---Q8---
/* In the LIKE statement, the “%” operator is used as a wildcard that matches any number of characters, including zero characters.
The “_” operator is used to match exactly one single character in a string.*/

#---Q9---
/* Normalization in databases is the process of organizing data to reduce redundancy and avoid data inconsistency. 
It helps maintain data integrity by dividing data into related tables and using relationships between them */

#---Q10---
/* A join in MySQL is used to combine rows from two or more tables based on a related column between them. 
It allows data stored in different tables to be retrieved together in a single result set. */

#---Q11---
/* DDL, DCL, and DML are categories of SQL commands used for different purposes in MySQL. 
DDL defines and modifies database structures, DML is used to insert, update, delete, 
and retrieve data, and DCL controls access and permissions to the database */

#---Q12---
/* The MySQL JOIN clause is used to retrieve data from multiple related tables in a single query. 
Common types of joins include INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL JOIN. */