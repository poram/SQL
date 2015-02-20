-- Pete Oram 
-- Homework #5
-- ITCS 3160

/*1*/

CREATE DATABASE Homework5
GO
USE Homework5
GO
CREATE TABLE JacketSize(
	ItemNumber	int		NOT NULL,
	Name		varchar(30)
)
INSERT INTO JacketSize(ItemNumber, Name)
VALUES (111, 'Denim Jacket')
INSERT INTO JacketSize(Name)
VALUES ('Motorcycle Jacket')


/*2*/

USE Homework5 
GO
CREATE TABLE Bowlers(
	Name     varchar(30) NOT NULL,
	Age      int		 NOT NULL,
	HighGame int		 NOT NULL,

	CONSTRAINT ck_MinAge CHECK(AGE > 18),
	CONSTRAINT ck_AgeHighGameCombo CHECK ((Age > 21) OR (HighGame > 150))
)

INSERT INTO Bowlers(Name, Age, HighGame)
VALUES ('Mark Lynch', 28, 188)
INSERT INTO Bowlers(Name, Age, HighGame)
VALUES ('Jeff Williams', 33, 220)
INSERT INTO Bowlers(Name, Age, HighGame)
VALUES ('Andrew Krouse', 16, 175)
INSERT INTO Bowlers(Name, Age, HighGame)
VALUES ('Jon Bowman', 31, 125)

/*3*/

USE Homework5
GO 
CREATE TABLE Hats(
	ItemNumber	int     NOT NULL,
	Style       varchar(50)
	CONSTRAINT PK_Hats PRIMARY KEY CLUSTERED (ItemNumber ASC)
)

INSERT INTO Hats (ItemNumber, Style)
VALUES (87364, 'Baseball Hat')
INSERT INTO Hats (ItemNumber, Style)
VALUES (88493, 'Cowboy Hat')
INSERT INTO Hats (ItemNumber, Style)
VALUES (83475, 'Golf Hat')

/*4*/

USE Homework5 
GO
CREATE TABLE Tablets(
	UPC        int         NOT NULL,
	Brand      varchar(50),
	ScreenSize int		   NOT NULL
	CONSTRAINT PK_Tablets PRIMARY KEY CLUSTERED (UPC ASC),
	CONSTRAINT UK_Tablets UNIQUE NONCLUSTERED (Brand)
 )

 INSERT INTO Tablets(UPC, Brand, ScreenSize)
 VALUES(423463456, 'HP', 11)
 INSERT INTO Tablets(UPC, Brand, ScreenSize)
 VALUES(378498349, 'Apple', 9)
 INSERT INTO Tablets(UPC, Brand, ScreenSize)
 VALUES(273648590, 'Microsoft', 10)

 /*5*/

CREATE TABLE ClassRegistration(
StudentID int NOT NULL,
ClassID   int NOT NULL

CONSTRAINT PK_ClassRegistration PRIMARY KEY CLUSTERED (StudentID ASC, ClassID ASC),
CONSTRAINT FK_ClassRegistration_Students FOREIGN KEY (StudentID)

REFERENCES Students (StudentID) ON DELETE CASCADE,
CONSTRAINT FK_ClassRegistration_Classes FOREIGN KEY (ClassID)
REFERENCES Classes (ClassID) ON DELETE NO ACTION

)

INSERT INTO Students(StudentID, FirstName, LastName)
VALUES (159179, ‘Pete’, ‘Oram’)
INSERT INTO Students(StudentID, FirstName, LastName)
VALUES (134378, ‘Aaron’, ‘Dahl’)
INSERT INTO Students(StudentID, FirstName, LastName)
VALUES (167395, ‘Christine’, ‘Angulo’)

INSERT INTO Classes(ClassID, ClassName)
VALUES (1241, 'Calc I')
INSERT INTO Classes(ClassID, ClassName)
VALUES (2116, ‘Tech Communication’)
INSERT INTO Classes(ClassID, ClassName)
VALUES (1212, ‘Intro to Comp Science’)

INSERT INTO ClassRegistration(StudentID, ClassID)
VALUES (156387, 3002)
INSERT INTO ClassRegistration(StudentID, ClassID)
VALUES (145344, 1003)
INSERT INTO ClassRegistration(StudentID, ClassID)
Values (153762, 2002)

DELETE FROM Students
WHERE StudentID = 159179
DELETE FROM Classes
WHERE ClassID = 1212