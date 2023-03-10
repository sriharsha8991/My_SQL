-- COMPARISION OPERATORS
SELECT 0=1;
-- OUTPUT == 0 WHICH REPRESENTS FALSE 
-- 1 REPRESENTS TRUE IN MYSQL
SELECT 0=0;
SELECT '0' = 0; -- STRING IS CONVERTED INTO NUMERIC WHILE 
-- COMAPRING THE VALUES AND THEN COMPARES

SELECT 9 != 7;
-- MYSQL SUPPORTS ALL BOOLEAN OPERATIONS
SELECT (10>6) IS TRUE;-- OUTPUT : 1

-- LOGICAL OPERATIONS
SELECT 1 AND 1; -- OUTPUT: 1
SELECT 1 XOR 1;-- OUTPUT: 0

SELECT 1 IS NOT NULL; -- TRUE OUTPUT:1

SELECT NULL IS NULL; -- 1

SELECT 4 IN (1,5,3,9,4); -- OP=1 AS 4 IS IN TUPLE

-- QUERY USING IN OPERATION************************************
USE WORLD;

SELECT NAME AS 'COUNTRY', ROUND(POPULATION/1000000) AS 'POPMM'
	FROM country
    WHERE POPULATION>50000000 AND CONTINENT IN ('ASIA','EUROPE')
    ORDER BY POPULATION DESC;

-- EXAMPLE QUERY FOR JOIN AND OPERATORS *************************************
USE ALBUM;
show tables;
describe track;
show table status;
SELECT T.TITLE AS 'TRACK', T.TRACK_NUMBER AS 'TRACK_NO' , A.TITLE AS 'ALBUM'
		,A.ARTIST AS 'ARTIST' , T.DURATION AS 'SECONDS'
	FROM ALBUM AS A
    JOIN TRACK AS T ON T.ALBUM_ID = A.ID
    WHERE T.DURATION >120 AND T.TRACK_NUMBER >3
    ORDER BY T.DURATION DESC;

-- MYSQL ALSO SUPPORTS ALL ARTHMETIC OPERATORS JUST LIKE PROGRAMMING

SELECT 5/0; -- IT GIVES A NULL VALUE IN MYSQL (DIVISION BY ZERO)
-- IT FOLLOWS ***PEDMAS*** OPERATOR PRESEDENCE


-- CASE STATEMENT IN MYSQL
USE SCRATCH;

CREATE TABLE BOOL_TEST(A INTEGER , B INTEGER);
INSERT INTO BOOL_TEST VALUES(10,5);
SELECT * FROM BOOL_TEST;

USE SCRATCH;
SELECT 
	CASE WHEN 'A' <20 THEN "TRUE" ELSE 'FALSE' END AS BOOLA,
    CASE WHEN 'B' <4 THEN "TRUE" ELSE "FALSE" END AS BOOLB
;
DROP TABLE BOOL_TEST;

CREATE TABLE BOOL_TEST(A INTEGER , B INTEGER);
INSERT INTO BOOL_TEST VALUES(10,5);
SELECT * FROM BOOL_TEST;

SELECT IF(A<5, 'TRUE_CONDITION', 'FALSE_CONDITON') 
FROM BOOL_TEST;



-- DATA TYPE- DATE AND TIME **************
USE SCRATCH;

SELECT NOW();

SHOW VARIABLES LIKE '%TIME_ZONE%';

SET TIME_ZONE = '+00:00';
SELECT NOW();
SET TIME_ZONE = 'SYSTEM';

-- ENUM OPERATOR AND ITS USAGE
USE SCRATCH;
DROP TABLE IF EXISTS test;
CREATE TABLE test (
  id INT UNSIGNED UNIQUE AUTO_INCREMENT PRIMARY KEY,
  a ENUM( 'Pablo', 'Henri', 'Jackson' )
);
INSERT INTO test ( a ) VALUES ( 'Pablo' );
INSERT INTO test ( a ) VALUES ( 'Henri' );
INSERT INTO test ( a ) VALUES ( 'Jackson' );
INSERT INTO test ( a ) VALUES ( 1 );
INSERT INTO test ( a ) VALUES ( 2 );
INSERT INTO test ( a ) VALUES ( 3 );
-- HERE THE VALUES 1 2 3 REPRESENTS PABLO, HENRI, JACKSON
-- AS THEY WERE GIVEN INSIDE ENUM IT GIVES INDICES TO VALUES!
SELECT * FROM test;


