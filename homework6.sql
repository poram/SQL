-- Pete Oram #800159179
-- Homework #6
-- ITCS 3160
-- 2/10/2014

/*1*/

CREATE DATABASE LemonadeStand
GO
USE LemonadeStand
GO

CREATE TABLE EmployeeSales(
	ID int NOT NULL,
	FirstName varchar(30),
	LastName  varchar(30),
	Years	  char(4) NOT NULL,
	Q1Sales   decimal(5, 2),
	Q2Sales   decimal(5, 2),
	Q3Sales   decimal(5, 2),
	Q4Sales   decimal(5, 2)

	CONSTRAINT PK_EmployeeSales PRIMARY KEY CLUSTERED (ID ASC, Years ASC)
	)

/*2*/

INSERT INTO EmployeeSales(ID, FirstName, LastName, Years, Q1Sales, Q2Sales, Q3Sales, Q4Sales)
VALUES (1, 'Christina', 'Yonkers', '2011', 268.39, 310.43, 410.11, 289.92),
       (1, 'Christina', 'Yonkers', '2012', 292.03, 305.25, 499.84, 416.22),
	   (2, 'Bill', 'Chisholm', '2012', 199.44, 215.55, 312.50, 278.88),
	   (3, 'Belinda', 'Johnson', '2011', 215.25, 188.14, 266.34, 244.20),
	   (4, 'Greg', 'Hathaway', '2010', 188.15, 205.11, 383.75, 301.01),
	   (4, 'Greg', 'Hathaway', '2011', 245.96, 360.33, 588.02, 489.00),
	   (4, 'Greg', 'Hathaway', '2012', 300.68, 362.66, 601.23, 501.17);

/*3*/

SELECT LastName + ',', + FirstName as 'Full Name', Years as 'Year', Q1Sales as 'Q1 Sales', Q2Sales as 'Q2 Sales', Q3Sales as 'Q3 Sales', Q4Sales as 'Q4 Sales',
	   (Q1Sales+Q2Sales+Q3Sales+Q4Sales) as 'Yearly Sales'
	   
	   FROM EmployeeSales















