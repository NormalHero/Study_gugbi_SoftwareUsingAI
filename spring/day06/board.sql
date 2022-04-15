CREATE SEQUENCE SEQ_BOARD;

CREATE TABLE TBL_BOARD(
   BNO NUMBER(10) PRIMARY KEY,
   TITLE VARCHAR2(1000) NOT NULL,
   CONTENT VARCHAR2(2000) NOT NULL,
   WRITER VARCHAR2(1000) NOT NULL,
   REGDATE DATE DEFAULT SYSDATE,
   UPDATEDATE DATE DEFAULT SYSDATE
);


SELECT * FROM TBL_BOARD;

INSERT INTO TBL_BOARD (BNO, TITLE, CONTENT, WRITER)
VALUES (SEQ_BOARD.NEXTVAL, '테스트 제목', '테스트 내용', 'user04');

UPDATE TBL_BOARD
SET
TITLE = '제목 수정',
CONTENT = '내용 수정',
UPDATEDATE = SYSDATE
WHERE BNO = 3;

DELETE FROM TBL_BOARD WHERE BNO = 6;
SELECT BNO, TITLE, CONTENT, WRITER FROM TBL_BOARD
WHERE bno = 3;

SELECT COUNT(BNO) FROM TBL_BOARD;

SELECT ROWNUM, TBL_BOARD.*
FROM TBL_BOARD ORDER BY bno DESC;



SELECT ROWNUM, B.* FROM
(SELECT * FROM TBL_BOARD 
ORDER BY bno) B WHERE ROWNUM BETWEEN 1 AND 2;


-- /*+*/  힌트
 
SELECT /*+INDEX_DESC(TBL_BOARD SYS_C008773)*/ ROWNUM, TBL_BOARD.* FROM TBL_BOARD;

 SELECT /*+ INDEX_DESC(TBL_BOARD SYS_C008773)*/ BNO, TITLE, CONTENT, WRITER, REGDATE, UPDATEDATE FROM TBL_BOARD WHERE BNO > 0

 
 INSERT INTO TBL_BOARD (BNO, TITLE, CONTENT, WRITER)
 SELECT SEQ_BOARD.NEXTVAL, TITLE , CONTENT, WRITER FROM TBL_BOARD ;