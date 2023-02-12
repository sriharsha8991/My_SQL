-- DATA BASE CREATION

create database Boat_Club;
USE Boat_club;

/*Create Three Tables*/


-- Table1 Sailors

Create table SAILORS(
sid int primary key not null,
sname varchar(20),
rating int,
age float
);
insert into SAILORS(sid,sname,rating,age)
values
	  (22,"Rahul",10,25.0),
      (29,"Anand",9,26.0),
	  (31,"Niket",7,56.6),
      (32,"Neha",5,56.6),
      (58,"Bijay",4,23.5),
      (64,"Thomas",8,35.0),
      (71,"Rusty",8,29.5),
      (74,"Venky",6,63.5),
      (85,"Alfred",1,42.5),
      (95,"Vikky",9,24.5);
SELECT * FROM SAILORS;

-- TABLE 2

CREATE TABLE BOATS_TABLE(
 bid int primary key not null,
 bname varchar(20),
 color varchar(20)
 );
 
 insert INTO BOATS_TABLE(bid, bname, color)
 values
		(101,"WaterKing","Red"),
        (102,"WaterKing","Blue"),
        (103,"Marine","Blue"),
        (104,"Seaway","Green");
SELECT * FROM BOATS_TABLE;

-- TABLE 3

CREATE TABLE RESERVER_TABLEs(
 sid int,
 bid int,
 days DATE
 );
 
INSERT INTO RESERVER_TABLEs(sid, bid, days)
values
		(22,101,'2017-10-10'),
        (22,102,'2017-10-10'),
        (22,103,'2017-08-10'),
        (22,104,'2017-07-10'),
        (31,102,'2017-10-11'),
        (31,103,'2017-06-11'),
        (31,104,'2017-12-11'),
        (64,101,'2017-05-09'),
        (64,102,'2017-05-09'),
        (74,103,'2017-05-09');
SELECT * FROM RESERVER_TABLES