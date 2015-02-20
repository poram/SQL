Pete Oram - 800159179
ITCS 3160
5 Databases - UPDATED 2.13.2014
1.27.2014


/* HOMEWORK #3 TEMPLATE */
/* Use this template to format your submission for homework #3. Be sure to put your SQL statements in the areas indicated below. See the homework assignment for specific directions on what is needed. Please follow the format specified. This is necessary to make grading easier and more efficient. Failure to follow this template will result in a deduction to your grade for this assignment. */

/******** SECTION FOR DATABASE # 1 ******************************************/

/* Put the SQL code to create Database #1 just after this comment */
CREATE DATABASE CarDealer
GO
USE CarDealer
/* Put the SQL code to create the 1st table for Database #1 just after this comment */
DROP TABLE Vehicles
GO
CREATE TABLE Vehicles(
	VehicleID             varchar (30) 	         NOT NULL,
	Manufacturer       varchar (30),
	Color	         varchar (30),
)
/* Put the SQL code to insert data into the 1st table for Database #1 just after this comment */

INSERT INTO Vehicles(VehicleID, Manufacturer, Color)
VALUES ('1HGCM82633A004352','Toyota','Blue'),
       ('1HGCM82633A004353', 'Honda', 'Silver'),
       ('1HGCM82633A004354', 'Nissan', 'White')

/* Put the SQL code to create the 2nd table for Database #1 just after this comment */
DROP TABLE Engines
GO
CREATE TABLE Engines (
	EngineID           int	    NOT NULL,
	Cylinders           int,
	Liters	       float(2)
)      
 /* Put the SQL code to insert data into the 2nd table for Database #1 just after this comment */
INSERT INTO Engines (EngineID, Cylinders, Liters) 
VALUES (412637894, 6, 3.8),
       (412537887, 4, 2.0),
       (417437895, 8, 5.0)
 /* Put the SQL code to create the 3rd table for Database #1 just after this comment */
DROP TABLE Maintenance
GO
CREATE TABLE Maintenance (
	ServiceID          int     NOT NULL,
	Price	           float (2),
	Type	           varchar (50)
)	
 /* Put the SQL code to insert data into the 3rd table for Database #1 just after this comment */ 
INSERT INTO Maintenance (ServiceID, Price, Type) 
VALUES (17639, 79.99, 'tire rotation and alignment'),
       (17640, 39.99, 'oil change'),
       (17641, 59.99, 'AC diagnostic')

/******** SECTION FOR DATABASE # 2 ******************************************/

 /* Put the SQL code to create Database #2 just after this comment */ 
CREATE DATABASE RecordStore
/* Put the SQL code to create the 1st table for Database #2 just after this comment */
DROP TABLE CD 
GO
CREATE TABLE  CD (
	ProductID                  int 	         NOT NULL,
	Year                       int,
	Price	                   decimal
)
 /* Put the SQL code to insert data into the 1st table for Database #2 just after this comment */
INSERT INTO CD (ProductID, Year, Price) 
VALUES (78349, 2006, 12.99),
       (78329, 1989, 8.99),
       (78302, 1976, 7.99)
 /* Put the SQL code to create the 2nd table for Database #2 just after this comment */
DROP TABLE DVD
GO
CREATE TABLE  DVD(
	ProductID                   int 	         NOT NULL,
	Year                        int,
	Price	                    decimal
)

 /* Put the SQL code to insert data into the 2nd table for Database #2 just after this comment */
INSERT INTO DVD (ProductID, Year, Price) 
VALUES (57489, 2009, 21.99),
       (57493, 2002, 9.99),
       (57499, 1981, 12.99)

 /* Put the SQL code to create the 3rd table for Database #2 just after this comment */
DROP TABLE Accessories
GO
CREATE TABLE  Accessories(
	ProductID                      int 	         NOT NULL,
	Type                           varchar(25),
	Price	                       decimal
)

 /* Put the SQL code to insert data into the 3rd table for Database #2 just after this comment */ 
INSERT INTO Accessories (ProductID, Type, Price) 
VALUES (37499, 'cd case', 29.99),
       (37419, 'dvd player', 49.99),
       (33119, 'MP3 player', 79.99)

/******** SECTION FOR DATABASE # 3 ******************************************/
 /* Put the SQL code to create Database #3 just after this comment */
CREATE DATABASE CoffeeShop

 /* Put the SQL code to create the 1st table for Database #3 just after this comment */
DROP TABLE Coffees
GO
CREATE TABLE  Coffees(
	CoffeeID                    int 	         NOT NULL,
	Size                        char(2),
	Price	                    decimal
)

 /* Put the SQL code to insert data into the 1st table for Database #3 just after this comment */
INSERT INTO Coffees (CoffeeID, Size, Price) 
VALUES (213, 'S', 1.99),
       (219, 'M', 2.99),
       (232, 'L', 3.99)
 /* Put the SQL code to create the 2nd table for Database #3 just after this comment */
DROP TABLE Employees
GO
CREATE TABLE  Employees(
	EmpID                 int 	         NOT NULL,
	Wage                  decimal,
	Title	              text
)

 /* Put the SQL code to insert data into the 2nd table for Database #3 just after this comment */
INSERT INTO Employees (EmpID, Wage, Title) 
VALUES (94824, 11.75, 'Cashier'),
       (94839, 9.75, 'Dish washer'),
       (94423, 15.75, 'Assistant manager')

 /* Put the SQL code to create the 3rd table for Database #3 just after this comment */
DROP TABLE Pastries
GO
CREATE TABLE  Pastries(
	PastryID            int 	         NOT NULL,
	Type                char(30),
	Price	            decimal
)
 /* Put the SQL code to insert data into the 3rd table for Database #3 just after this comment */ 
INSERT INTO Pastries (PastryID, Type, Price) 
VALUES (21, 'Muffin', 3.25),
       (25, 'Cake', 5.25),
       (29, 'Pie', 2.25)
/******** SECTION FOR DATABASE # 4 ******************************************/
 /* Put the SQL code to create Database #4 just after this comment */
CREATE DATABASE DryCleaners

 /* Put the SQL code to create the 1st table for Database #4 just after this comment */
DROP TABLE Shirts
GO
CREATE TABLE  Shirts(
	ItemID                   int 	         NOT NULL,
	Style                    char(25),
	Price	                 decimal
)
 /* Put the SQL code to insert data into the 1st table for Database #4 just after this comment */
INSERT INTO Shirts (ItemID, Style, Price)
VALUES (01984, 'Long sleeve button down', 3.00),
       (01973, 'T-Shirt', 2.00),
       (01911, 'Crew Neck', 2.50)
 /* Put the SQL code to create the 2nd table for Database #4 just after this comment */ 
DROP TABLE Pants
GO
CREATE TABLE  Pants(
	ItemID              int 	         NOT NULL,
	Material            char(25),
	Price	            decimal
)
/* Put the SQL code to insert data into the 2nd table for Database #4 just after this comment */
INSERT INTO Pants (ItemID, Material, Price) 
VALUES (11423, 'Cotton', 5.00),
       (11463, 'Nylon', 6.00),
       (11400, 'Polyester', 8.00)
 /* Put the SQL code to create the 3rd table for Database #4 just after this comment */
DROP TABLE Jackets
GO
CREATE TABLE  Jackets(
	ItemID                  int 	         NOT NULL,
	Style                   char(25),
	Price	                decimal
)
 /* Put the SQL code to insert data into the 3rd table for Database #4 just after this comment */
INSERT INTO Jackets (ItemID, Style, Price) 
VALUES (24395, 'Sport Jacket', 8.00),
       (24435, 'Tuxedo Jacket', 10.00),
	   (14235, 'Blazer', 7.00)

/******** SECTION FOR DATABASE # 5 ******************************************/
/* Put the SQL code to create Database #5 just after this comment */
CREATE DATABASE Hospital

 /* Put the SQL code to create the 1st table for Database #5 just after this comment */
DROP TABLE Patient
GO
CREATE TABLE  Patient(
	SocialSec         int 	         NOT NULL,
	Age               int,
	Sex	              char(1)
)
 /* Put the SQL code to insert data into the  1st table for Database #5 just after this comment */
INSERT INTO Patient (Social, Age, Sex) 
VALUES (337782789, 47, 'F'),
       (389782789, 26, 'M'),
       (3897823782, 16, 'F')
 /* Put the SQL code to create the 2nd table for Database #5 just after this comment */
DROP TABLE Doctor
GO
CREATE TABLE  Doctor(
	DoctorID                int 	         NOT NULL,
	Title                   char(30),
	Office	                varchar(50)
)
 /* Put the SQL code to insert data into the 2nd table for Database #5 just after this comment */
INSERT INTO Doctor (DoctorID, Title, Office) 
VALUES (29109, 'General practice', 'Main 125'),
       (25345, 'Physical therapist', 'Main 158'),
       (73745, 'Urologist', 'Main 235')
 /* Put the SQL code to create the 3rd table for Database #5 just after this comment */
DROP TABLE Prescription
GO
CREATE TABLE  Prescription(
	OrderNumber             int 	         NOT NULL,
	Type                    char(25),
	Quantity	            int
)
 /* Put the SQL code to insert data into the 3rd table for Database #5 just after this comment */
INSERT INTO Prescription (OrderNumber, Type, Quantity) 
VALUES (83948, 'antibiotic', 50),
       (83939, 'anti-anxiety', 60),
       (29343, 'pain medication', 200)
