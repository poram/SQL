-- Pete Oram #800159179
-- Homework #7
-- ITCS 3160
-- AutoDealer Queries
-- 2.12.2014


/*1*/

USE AutoDealer
GO

SELECT COUNT(CarColors.Color) 
AS 'Cars with ZX starting license plates and that are Red'
FROM [AutoDealer].[dbo].[CarColors], [AutoDealer].[dbo].[RegisteredCars]
WHERE CarColors.Color = 'Red' AND RegisteredCars.PlateNumber LIKE 'ZX%'

/*2*/

SELECT *
FROM [AutoDealer].[dbo].[CarColors], [AutoDealer].[dbo].[RegisteredCars]
WHERE CarColors.Color = 'Red' AND RegisteredCars.PlateNumber LIKE 'ZX%'

/*3*/

SELECT *
FROM [AutoDealer].[dbo].[RegisteredCars]
WHERE Year < 2009 AND VehicleID LIKE '______Y%'

/*4*/

SELECT *
FROM [AutoDealer].[dbo].[RegisteredCars]
WHERE Year < 2009 AND VehicleID LIKE '______Y%'
ORDER BY Manufacturer, Model

/*5*/

SELECT DISTINCT CarColors.Color as 'Available Colors'
FROM [AutoDealer].[dbo].[RegisteredCars], [AutoDealer].[dbo].[CarColors]
WHERE RegisteredCars.Manufacturer = 'Chevrolet' AND RegisteredCars.Model = 'Camaro' 
AND RegisteredCars.Year = 1997

/*6*/

SELECT Manufacturer, Model, AVG(RegisteredCars.Price) as AveragePrice
FROM [AutoDealer].[dbo].[RegisteredCars]
WHERE Year = 2000
GROUP BY Manufacturer, Model
ORDER BY AveragePrice



	