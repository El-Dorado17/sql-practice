
/*
Database is a GIANT CSV File of 
top 1,700 selling video games before February 2020

Below are SQL queries used to get specific data
*/


SELECT * FROM videogames
--*RETURNS
--  Rank, Name, Platform, Year, Genre, Publisher,
--  NA_Sales, EU_Sales, JP_Sales, Other_Sales, 
--  Global_Sales


SELECT NAME, PLATFORM, YEAR, NA_Sales
FROM videogames
ORDER BY NA_Sales DESC
--*RETURNS
--List of games by North American Sales 
-- in descending order 
-- Wii Sports (2006), Super Mario Bros (1985), and Duck Hunt (1984) are top 3


SELECT NAME, PLATFORM, YEAR, NA_Sales
FROM videogames
WHERE Platform = 'PSP'
ORDER BY NA_Sales DESC
--*RETRUNS
-- List of top selling PSP Games in NA
-- GTA: Liberty City Stories  with 2.9 million USD in sales

