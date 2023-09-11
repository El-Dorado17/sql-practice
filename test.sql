
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


SELECT * FROM videogames
WHERE NAME LIKE '%dragon ball%'
ORDER BY NA_Sales DESC
--*RETURNS 
-- Only entries with the characters I mentioned 
--(% indicate characters may exist before/after what I specified)
--*Results:
/*
Dragon Ball Z: Budokai	PS2
Dragon Ball Z: Budokai 2	PS2
Dragon Ball Z: The Legacy of Goku	GBA
Dragon Ball Z: Budokai Tenkaichi 3	PS2
Dragon Ball Z: Budokai 3	PS2
Dragon Ball Z: Budokai Tenkaichi	PS2
Dragon Ball Z: The Legacy of Goku II	GBA
Dragon Ball Z: Taiketsu	GBA
Dragon Ball Z: Budokai Tenkaichi 2	PS2
Dragon Ball Z: Budokai	GC
*/


SELECT * FROM videogames
WHERE NAME LIKE '%dragon ball%'
ORDER BY Global_Sales DESC
--*RETURNS
/*
1   Dragon Ball Z: Budokai	PS2	2002
2   Dragon Ball Z: Budokai Tenkaichi 3	PS2	2007
3   Dragon Ball Z: Budokai 2	PS2	2003
4   Dragon Ball Z: Budokai 3	PS2	2004
5   Dragon Ball Z: The Legacy of Goku	GBA	2002
6   Dragon Ball Z: Budokai Tenkaichi	PS2	2005
7   Dragon Ball Z	SNES	1993
8   Dragon Ball: Daimaou Fukkatsu	NES	1988
9   Dragon Ball Z: La Legende Saien	SNES	1993
10  Dragon Ball Z: The Legacy of Goku II	GBA	2003
*/