
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





