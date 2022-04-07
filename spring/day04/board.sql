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
VALUES (SEQ_BOARD.NEXTVAL, '테스트 제목', '테스트 내용', 'user00');

