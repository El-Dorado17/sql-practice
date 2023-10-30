
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
1   Dragon Ball Z: Budokai	PS2	2002    ($3 Million in sales globally)
2   Dragon Ball Z: Budokai Tenkaichi 3	PS2	2007    ($3 million)
3   Dragon Ball Z: Budokai 2	PS2	2003    ($2.5 million)
4   Dragon Ball Z: Budokai 3	PS2	2004    ($2 million)
5   Dragon Ball Z: The Legacy of Goku	GBA	2002 
6   Dragon Ball Z: Budokai Tenkaichi	PS2	2005
7   Dragon Ball Z	SNES	1993
8   Dragon Ball: Daimaou Fukkatsu	NES	1988
9   Dragon Ball Z: La Legende Saien	SNES	1993
10  Dragon Ball Z: The Legacy of Goku II	GBA	2003    ($1 million)
(Budokai 3 is goated btw)

!HERE is where the games fall globally by the way (respectively):
451
470
641
883
1070
1107
1327
1589
1676
1877
*/


SELECT * FROM videogames
WHERE NAME LIKE '%n+%'
--*RETURNS
/*
N+	DS	2007	Atari	0.0599999986588955	0	0	0	0.0700000002980232
N+	PSP	2007	Atari	0.0299999993294477	0	0	0	0.0299999993294477

Very curious why global sales is different for NA sales on DS
Also, this game was NA only; didn't know that and I loved this game
*/


SELECT * FROM videogames
--*RETURNS
/* The top 30 video games... Nintendo DOMINATES this list; holy cow

Rank    Name    Platform    Year    Genre   Publisher

1	Wii Sports	Wii	2006	Sports	Nintendo
2	Super Mario Bros.	NES	1985	Platform	Nintendo
3	Mario Kart Wii	Wii	2008	Racing	Nintendo
4	Wii Sports Resort	Wii	2009	Sports	Nintendo
5	Pokemon Red/Pokemon Blue	GB	1996	Role-Playing	Nintendo
6	Tetris	GB	1989	Puzzle	Nintendo
7	New Super Mario Bros.	DS	2006	Platform	Nintendo
8	Wii Play	Wii	2006	Misc	Nintendo
9	New Super Mario Bros. Wii	Wii	2009	Platform	Nintendo
10	Duck Hunt	NES	1984	Shooter	Nintendo
11	Nintendogs	DS	2005	Simulation	Nintendo
12	Mario Kart DS	DS	2005	Racing	Nintendo
13	Pokemon Gold/Pokemon Silver	GB	1999	Role-Playing	Nintendo
14	Wii Fit	Wii	2007	Sports	Nintendo
15	Wii Fit Plus	Wii	2009	Sports	Nintendo
16	Kinect Adventures!	X360	2010	Misc	Microsoft Game Studios
17	Grand Theft Auto V	PS3	2013	Action	Take-Two Interactive
18	Grand Theft Auto: San Andreas	PS2	2004	Action	Take-Two Interactive
19	Super Mario World	SNES	1990	Platform	Nintendo
20	Brain Age: Train Your Brain in Minutes a Day	DS	2005	Misc	Nintendo
21	Pokemon Diamond/Pokemon Pearl	DS	2006	Role-Playing	Nintendo
22	Super Mario Land	GB	1989	Platform	Nintendo
23	Super Mario Bros. 3	NES	1988	Platform	Nintendo
24	Grand Theft Auto V	X360	2013	Action	Take-Two Interactive
25	Grand Theft Auto: Vice City	PS2	2002	Action	Take-Two Interactive
26	Pokemon Ruby/Pokemon Sapphire	GBA	2002	Role-Playing	Nintendo
27	Pokemon Black/Pokemon White	DS	2010	Role-Playing	Nintendo
28	Brain Age 2: More Training in Minutes a Day	DS	2005	Puzzle	Nintendo
29	Gran Turismo 3: A-Spec	PS2	2001	Racing	Sony Computer Entertainment
30	Call of Duty: Modern Warfare 3	X360	2011	Shooter	Activision
*/


SELECT * FROM videogames
ORDER BY YEAR ASC
--*RETURNS
/*OLD GAMES LOL... Activision is old?!

259	Asteroids	2600	1980	Shooter	Atari
545	Missile Command	2600	1980	Shooter	Atari
1768	Kaboom!	2600	1980	Misc	Activision
1971	Defender	2600	1980	Misc	Atari
2671	Boxing	2600	1980	Fighting	Activision
4027	Ice Hockey	2600	1980	Sports	Activision
5368	Freeway	2600	1980	Action	Activision
6319	Bridge	2600	1980	Misc	Activision
6898	Checkers	2600	1980	Misc	Atari
*/


SELECT Name, Platform, Year, Genre, Publisher, NA_Sales, Global_Sales FROM videogames
WHERE Platform = 'PS2'
ORDER BY Global_Sales DESC
/*
Grand Theft Auto: San Andreas	PS2	2004	Action	Take-Two Interactive	9.43000030517578	20.8099994659424
Grand Theft Auto: Vice City	PS2	2002	Action	Take-Two Interactive	8.40999984741211	16.1499996185303
Gran Turismo 3: A-Spec	PS2	2001	Racing	Sony Computer Entertainment	6.84999990463257	14.9799995422363
Grand Theft Auto III	PS2	2001	Action	Take-Two Interactive	6.98999977111816	13.1000003814697
Gran Turismo 4	PS2	2004	Racing	Sony Computer Entertainment	3.00999999046326	11.6599998474121
Final Fantasy X	PS2	2001	Role-Playing	Sony Computer Entertainment	2.91000008583069	8.05000019073486
Need for Speed Underground	PS2	2003	Racing	Electronic Arts	3.26999998092651	7.19999980926514
Need for Speed Underground 2	PS2	2004	Racing	Electronic Arts	2.71000003814697	6.90000009536743
Medal of Honor: Frontline	PS2	2002	Shooter	Electronic Arts	2.9300000667572	6.82999992370605
Kingdom Hearts	PS2	2002	Role-Playing	Sony Computer Entertainment	3.64000010490417	6.40000009536743
Metal Gear Solid 2: Sons of Liberty	PS2	2001	Action	Konami Digital Entertainment	2.45000004768372	6.05000019073486
Final Fantasy XII	PS2	2006	Role-Playing	Square Enix	1.87999999523163	5.94999980926514
Crash Bandicoot: The Wrath of Cortex	PS2	2001	Platform	Universal Interactive	2.0699999332428	5.42000007629395
Final Fantasy X-2	PS2	2003	Role-Playing	Electronic Arts	1.91999995708466	5.28999996185303
Madden NFL 2004	PS2	N/A	Sports	Electronic Arts	4.26000022888184	5.23000001907349
Dragon Quest VIII: Journey of the Cursed King	PS2	2004	Role-Playing	Square Enix	0.649999976158142	5.21000003814697
Medal of Honor: Rising Sun	PS2	2003	Shooter	Electronic Arts	1.98000001907349	5.13000011444092
Guitar Hero II	PS2	2006	Misc	RedOctane	3.80999994277954	5.11999988555908
Guitar Hero III: Legends of Rock	PS2	2007	Misc	Activision	3.49000000953674	4.98000001907349
Madden NFL 06	PS2	2005	Sports	Electronic Arts	3.98000001907349	4.90999984741211
*/



SELECT Name, Platform, Year, Genre, Publisher, NA_Sales, Global_Sales FROM videogames
WHERE Platform = 'DS'
ORDER BY Global_Sales DESC
/*
New Super Mario Bros.	DS	2006	Platform	Nintendo	11.3800001144409	30.0100002288818
Nintendogs	DS	2005	Simulation	Nintendo	9.06999969482422	24.7600002288818
Mario Kart DS	DS	2005	Racing	Nintendo	9.8100004196167	23.4200000762939
Brain Age: Train Your Brain in Minutes a Day	DS	2005	Misc	Nintendo	4.75	20.2199993133545
Pokemon Diamond/Pokemon Pearl	DS	2006	Role-Playing	Nintendo	6.42000007629395	18.3600006103516
Pokemon Black/Pokemon White	DS	2010	Role-Playing	Nintendo	5.57000017166138	15.3199996948242
Brain Age 2: More Training in Minutes a Day	DS	2005	Puzzle	Nintendo	3.44000005722046	15.3000001907349
Animal Crossing: Wild World	DS	2005	Simulation	Nintendo	2.54999995231628	12.2700004577637
Pokemon HeartGold/Pokemon SoulSilver	DS	2009	Action	Nintendo	4.40000009536743	11.8999996185303
Super Mario 64	DS	2004	Platform	Nintendo	5.07999992370605	10.4200000762939
Mario Party DS	DS	2007	Misc	Nintendo	4.46000003814697	9.02000045776367
Pokemon Black 2/Pokemon White 2	DS	2012	Role-Playing	Nintendo	2.91000008583069	8.32999992370605
Pokémon Platinum Version	DS	2008	Role-Playing	Nintendo	2.8199999332428	7.84000015258789
Big Brain Academy	DS	2005	Misc	Nintendo	1.66999995708466	6.67000007629395
Dragon Quest IX: Sentinels of the Starry Skies	DS	2009	Role-Playing	Nintendo	0.660000026226044	5.84000015258789
Cooking Mama	DS	2006	Simulation	505 Games	3.13000011444092	5.71999979019165
Professor Layton and the Curious Village	DS	2007	Puzzle	Nintendo	1.22000002861023	5.26000022888184
The Legend of Zelda: Phantom Hourglass	DS	2007	Action	Nintendo	1.89999997615814	5.17000007629395
Mario & Sonic at the Olympic Games	DS	2008	Sports	Sega	1.63999998569489	5.1399998664856
Pokemon Mystery Dungeon: Explorers of Time/Explorers of Darkness	DS	2007	Role-Playing	Nintendo	1.85000002384186	4.96000003814697
LEGO Star Wars: The Complete Saga	DS	2007	Action	LucasArts	2.89000010490417	4.90000009536743
*/


SELECT COUNT(*) FROM videogames
-- 16598 ROWS OF GAMES


SELECT AVG(Global_Sales) FROM videogames;
-- 0.537440655354071 --*AVERAGE GLOBAL SALE (Half-a-million USD)


Select ____ FROM
WHERE ____ IN ('__', '__', '__')


SELECT name, population
FROM world
WHERE name LIKE "Al%"
-- Begin with Al  
--IF ending in AL:  "%al"

--Wanted to organize by PS4 games wife and I could play, but also eliminate any listing unavailable in North America
SELECT * FROM vgsales
WHERE Platform = 'PS4' AND NA_Sales > 0
ORDER BY Rank asc



DEFINITIONS:

SELECT
    Indicate what we will are Querying about
    SELECT population FROM world


FROM
    Indicate what table we are talking about
    SELECT ___ FROM video-game-sales

WHERE

INSERT INTO

UPDATE

DELETE

CREATE TABLE

ALTER TABLE

DROP TABLE

JOIN

GROUP BY

ORDER BY

DISTINCT

HAVING

ALWAYS

COUNT()

SUM(), AVG(), MIN(), MAX()

BETWEEN

LIKE 

IN

NOT

AND/OR

CASE

UNION

