--LAB-10--

--JOINS--

CREATE TABLE STUDENT_2
(RNO INT,
 NAME VARCHAR(50),
 BRANCH VARCHAR(50)
 );

 INSERT INTO STUDENT_2 VALUES(101,'RAJU','CE'),
							 (102,'AMIT','CE'),
							 (103,'SANJAY','ME'),
							 (104,'NEHA','EC'),
							 (105,'MEERA','EE'),
							 (106,'MAHESH','ME')
		 
SELECT * FROM STUDENT_2	

CREATE TABLE RESULT_1
(RNO INT,
SPI DECIMAL(4,2)
);

INSERT INTO RESULT_1 VALUES(101,8.8),
                           (102,9.2),
						   (103,7.6),
						   (104,8.2),
						   (105,7.0),
						   (107,8.9)
						   
SELECT * FROM RESULT_1

CREATE TABLE E
(EMPLOYEENO VARCHAR(50),
 NAME VARCHAR(50),
 MANAGERNO VARCHAR(50)
 );

 INSERT INTO E VALUES('E01','TARUN',NULL),
                              ('E02','ROHAN','E02'),
							  ('E03','PRIYA','E01'),
							  ('E04','MILAN','E03'),
							  ('E05','JAY','E01'),
							  ('E06','ANJANA','E04')

SELECT * FROM E

CREATE TABLE M
(EMPLOYEENO VARCHAR(50),
 NAME VARCHAR(50),
 MANAGERNO VARCHAR(50)
 );

 INSERT INTO M VALUES('E01','TARUN',NULL),
                              ('E02','ROHAN','E02'),
							  ('E03','PRIYA','E01'),
							  ('E04','MILAN','E03'),
							  ('E05','JAY','E01'),
							  ('E06','ANJANA','E04')

SELECT * FROM M


--1--
SELECT STUDENT_2.RNO, STUDENT_2.NAME, STUDENT_2.BRANCH
FROM STUDENT_2 CROSS JOIN RESULT_1

--2--
SELECT STUDENT_2.RNO, STUDENT_2.BRANCH, STUDENT_2.NAME, RESULT_1.SPI
FROM STUDENT_2 LEFT OUTER JOIN RESULT_1 ON
STUDENT_2.RNO=RESULT_1.RNO WHERE BRANCH='CE'

--3--
SELECT STUDENT_2.RNO, STUDENT_2.BRANCH, STUDENT_2.NAME, RESULT_1.SPI
FROM STUDENT_2 LEFT OUTER JOIN RESULT_1 ON
STUDENT_2.RNO=RESULT_1.RNO WHERE BRANCH='EC'

--4--
SELECT STUDENT_2.BRANCH,AVG(SPI)
FROM STUDENT_2 INNER JOIN RESULT_1
ON STUDENT_2.RNO=RESULT_1.RNO GROUP BY STUDENT_2.BRANCH

--5--
SELECT STUDENT_2.BRANCH,AVG(SPI)
FROM STUDENT_2 INNER JOIN RESULT_1
ON STUDENT_2.RNO=RESULT_1.RNO GROUP BY STUDENT_2.BRANCH
ORDER BY AVG(RESULT_1.SPI)

--6--
SELECT STUDENT_2.BRANCH, AVG(RESULT_1.SPI)
FROM STUDENT_2 INNER JOIN RESULT_1 
ON STUDENT_2.RNO=RESULT_1.RNO
WHERE STUDENT_2.BRANCH IN('CE','ME') GROUP BY STUDENT_2.BRANCH

--7--
SELECT STUDENT_2.RNO, STUDENT_2.NAME, STUDENT_2.BRANCH, RESULT_1.SPI
FROM STUDENT_2 LEFT OUTER JOIN RESULT_1
ON STUDENT_2.RNO=RESULT_1.RNO

--8--
SELECT STUDENT_2.RNO, STUDENT_2.NAME, STUDENT_2.BRANCH, RESULT_1.SPI
FROM STUDENT_2 RIGHT OUTER JOIN RESULT_1
ON STUDENT_2.RNO=RESULT_1.RNO

--9--
SELECT STUDENT_2.RNO, STUDENT_2.NAME, STUDENT_2.BRANCH, RESULT_1.SPI
FROM STUDENT_2 FULL OUTER JOIN RESULT_1
ON STUDENT_2.RNO=RESULT_1.RNO


--10--
SELECT E.NAME AS EMPLOYEENAME, M.NAME AS MANAGERNAME
FROM E,M
WHERE E.EMPLOYEENO=M.MANAGERNO




   	   	   						   						 	