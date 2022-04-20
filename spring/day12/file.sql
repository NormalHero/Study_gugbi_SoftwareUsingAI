CREATE SEQUENCE SEQ_ATTACH;

CREATE TABLE TBL_ATTACH(
	NUM NUMBER PRIMARY KEY,
	FILENAME VARCHAR2(1000),
	UPLOADPATH VARCHAR2(2000),
	UUID VARCHAR2(500),
	IMAGE CHAR(1), /* 이미지면 1, 아니면 0 */
	BNO NUMBER(10),
	CONSTRAINT FK_ATTACH FOREIGN KEY (BNO) REFERENCES TBL_BOARD(BNO)
);
SELECT * FROM TBL_ATTACH ;



/* 트랜잭션 관리*/
        
CREATE SEQUENCE SEQ_TEST;
CREATE TABLE TBL_TEST1(
	ID VARCHAR2(1000) PRIMARY KEY,
	NAME VARCHAR2(500)
);
CREATE TABLE TBL_TEST2(
	NUM VARCHAR2(1000) PRIMARY KEY,
	NAME VARCHAR2(500)
);

DROP TABLE TBL_TEST1;

SELECT * FROM TBL_TEST1 ;
SELECT * FROM TBL_TEST2 ;