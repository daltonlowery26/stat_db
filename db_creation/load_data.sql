-- Active: 1747588244668@@127.0.0.1@5432@baseball
-- SQLBook: Code

 CREATE DATABASE Baseball;

DROP DATABASE chinook;

DROP Table fg_02_24;

CREATE TABLE fg_02_24 (
	Season INT,
	Name VARCHAR(100),
	Team VARCHAR(50),
	PA INT,
	Age INT,
	BB_PCT DECIMAL(7,4),
	K_PCT DECIMAL(7,4),
	BABIP DECIMAL(7,3),
	wRC_Plus DECIMAL(7,4),
	BsR DECIMAL(7,4),
	Off DECIMAL(7,4),
	Def DECIMAL(7,4),
	WAR DECIMAL(7,1),
	O_Swing_PCT DECIMAL(7,4),
	Z_Swing_PCT DECIMAL(7,4),
	O_Contact_PCT DECIMAL(7,4),
	Z_Contact_PCT DECIMAL(7,4),
	Contact_PCT DECIMAL(7,4),
	SwStr_PCT DECIMAL(7,4),
	CSW_PCT DECIMAL(7,4)
);

COPY fg_02_24
FROM 'C:/Database/data/data_02_24.csv'
WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',');

DROP TABLE pitch_18_24;

CREATE TABLE pitch_18_24 (
	Season INT,
	Pitch_ABV VARCHAR(50),
	Pitch_Name VARCHAR(100),
	Batter VARCHAR(100),
	Pitcher VARCHAR(100),
	Description VARCHAR(200),
	Statcast_Zone DECIMAL(7,4),
	XWOBA DECIMAL(7, 4),
	B_Stand VARCHAR(10),
	P_Throws VARCHAR(10),
	Type VARCHAR(10),
	Balls INT,
	Strikes INT,
	Plate_Horz DECIMAL(7,4),
	Plate_Vert DECIMAL(7, 4),
	SZ_Top DECIMAL(7,4),
	SZ_Bot DECIMAL(7,4)
);

COPY pitch_18_24
FROM 'C:/Database/data/pitch_18_24.csv'
WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',');

CREATE TABLE swing_value_18_24 (
	Batter VARCHAR(100),
	Season INT,
	Chase_Value DECIMAL(7,4),
	Overall_Value DECIMAL(7,4)
);

COPY swing_value_18_24
FROM 'C:/Database/data/swing_values.csv'
WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',');


DROP TABLE swing_time_24;

CREATE TABLE swing_time_24 (
	Name VARCHAR(100),
	Season INT,
	Team VARCHAR(100),
	Swings INT,
	Batspeed DECIMAL(7, 4),
	Swing_Length DECIMAL(7,4),
	Swing_Time DECIMAL(7, 4),
	Acceleration DECIMAL(7, 4)
);

COPY swing_time_24
FROM 'C:/Database/data/swingtime.csv'
WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',');