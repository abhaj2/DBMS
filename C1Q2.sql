CREATE TABLE STUDENT
(
SID INT(10) NOT NULL PRIMARY KEY,
NAME VARCHAR(25),
DOB VARCHAR(15),
PHY INT(3),
CHEM INT(3),
MATH INT(3)
);

INSERT INTO STUDENT VALUES 
(01,"ANNA","1999-12-12",23,74,92),
(02,"ALPHONS","1998-08-26",72,74,100),
(03,"JENCIL","1999-02-04",65,72,22),
(04,"PARVATHY","1999-06-16",10,35,70),
(05,"RINKU","1999-12-28",59,55,70);

DESCRIBE STUDENT;


 SELECT *FROM STUDENT WHERE DOB=(SELECT MAX(DOB) FROM STUDENT);

SELECT *FROM STUDENT WHERE MATH>40 AND (PHY >40 OR CHEM>40);

ALTER TABLE STUDENT
ADD COLUMN TOTAL INT(5),
ADD COLUMN AVERAGE FLOAT(5);

SELECT *FROM STUDENT WHERE MATH=(SELECT MAX(MATH) FROM STUDENT);
 
 SELECT * FROM STUDENT WHERE CHEM =(SELECT MIN(CHEM) FROM STUDENT) ;

UPDATE STUDENT SET 
TOTAL= (PHY+CHEM+MATH);

ALTER TABLE STUDENT RENAME COLUMN AVERAGE TO AVG_MARK;

UPDATE STUDENT SET
AVG_MARK=TOTAL/3;

SELECT avg(AVG_MARK) FROM student;  #OVERALL AVG OF THE CLASS 

SELECT *FROM STUDENT WHERE AVG_MARK>(SELECT AVG(AVG_MARK) FROM STUDENT);

SELECT COUNT(*) FROM STUDENT  WHERE AVG_MARK>(SELECT AVG(AVG_MARK)FROM STUDENT);
  
SELECT *FROM STUDENT ORDER BY TOTAL DESC;

SELECT *FROM STUDENT;

DESCRIBE STUDENT;

DROP TABLE STUDENT;