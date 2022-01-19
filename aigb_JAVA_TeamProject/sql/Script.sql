
CREATE SEQUENCE USER_NUM_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 5 CYCLE NOCACHE;

/*
CYCLE OR NOCYCLE --CYCLE 설정시 최대값에 도달하면 최소값부터 다시 시작 NOCYCLE 설정시 최대값 생성 시 시퀀스 생성중지
CACHE OR NOCACHE --CACHE 설정시 메모리에 시퀀스 값을 미리 할당하고 NOCACHE 설정시 시퀀스값을 메로리에 할당하지 않음
*/

CREATE TABLE TEST_TABLE (
	userNum NUMBER PRIMARY KEY,
	NAME VARCHAR2(100),
	AGE	NUMBER 
);

DROP TABLE TEST_TABLE;
DROP SEQUENCE USER_NUM_SEQ;

INSERT INTO testTable
VALUES('사용자1',20);


SELECT NAME FROM TESTTABLE WHERE NAME='사용자1';

INSERT INTO TEST_TABLE (userNum, NAME, AGE) values(USER_NUM_SEQ.NEXTVAL,'사용자1',19);
INSERT INTO TEST_TABLE (userNum, NAME, AGE) values(USER_NUM_SEQ.NEXTVAL,'사용자2',19);
INSERT INTO TEST_TABLE (userNum, NAME, AGE) values(USER_NUM_SEQ.NEXTVAL,'사용자3',19);
INSERT INTO TEST_TABLE (userNum, NAME, AGE) values(USER_NUM_SEQ.NEXTVAL,'사용자4',19);
INSERT INTO TEST_TABLE (userNum, NAME, AGE) values(USER_NUM_SEQ.NEXTVAL,'사용자5',19);
INSERT INTO TEST_TABLE (userNum, NAME, AGE) values(USER_NUM_SEQ.NEXTVAL,'사용자6',19);
SELECT * FROM TEST_TABLE;





/*UserTable
-----------------
userNum : num (자동증가,시퀀스) // 회원번호
-----------------
userPhoneNum : varchar2(500) // 전화번호
userName : varchar2(500)    // 이름 
userId  : varchar2(500) uk //  아이디
userAge : varchar2(500) // 나이
userPw : varchar2(500)  // 비밀번호
userGender  : varchar2(500)  // 성별
userAddress : varchar2(500) // 지역*/ ---> region이 지역으로 명확 할 수 있다. 


/*UserTable 자동증가 시퀀스 */
CREATE SEQUENCE UserTable_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 10 CYCLE NOCACHE;
/*UserRecordTable 자동증가 시퀀스 */
CREATE SEQUENCE UserRecordTable_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 10 CYCLE NOCACHE;



/*UserTable 테이블 */
CREATE TABLE UserTable(
userNum NUMBER PRIMARY KEY,
userId   varchar2(500) UNIQUE,
userPw  varchar2(500) NOT NULL,
userName  varchar2(500) NOT NULL,  
userAge  DATE NOT NULL,
userPhonNum varchar2(500) NOT NULL,
userGender CHAR(1) DEFAULT 'F' NOT NULL CONSTRAINT CK_CHAR CHECK(userGender IN('M','F')),
userRegion  varchar2(500)  DEFAULT '서울' NOT NULL CONSTRAINT CK_varchar 
CHECK(userRegion IN('서울','경기', '인청', '강원', '충북', '울산', '부산', '대구', '광주', '대전'
, '세종', '충남', '경북', '경남', '전북', '전남', '제주')),
userStatus NUMBER DEFAULT '0' NOT NULL CONSTRAINT CK_Status CHECK(userStatus IN('0','1'))
);



--전화번호 추가


/*CREATE TABLE UserRecordTable(
recordNum  NUMBER PRIMARY KEY , 
userNum NUMBER  NOT NULL,
recordTiem  NUMBER NOT NULL ,
recordDate  date NOT NULL,
recordExercise  varchar2(500) NOT NULL, 
recordCount  NUMBER NOT NULL,
CONSTRAINT FK_USERID FOREIGN KEY(userNum) REFERENCES UserTable(userNum)
);*/

/*UserRecordTable 테이블 */
CREATE TABLE UserRecordTable(
recordNum  NUMBER PRIMARY KEY , 
userId   varchar2(500)  NOT NULL,
recordTime  NUMBER NOT NULL ,
recordDate  varchar2(500) NOT NULL,
recordExercise  varchar2(500) NOT NULL, 
recordCount  NUMBER NOT NULL,
CONSTRAINT FK_USERID FOREIGN KEY(userId) REFERENCES UserTable(userId)
);

/* 마이페이지 사용자 정보 조회*/
SELECT userNum,userPw, userName, userAge, userPhoneNum, userGender, userRegion FROM UserTable WHERE UserNum = 1;

/* 운동일지 전체조회*/
SELECT recordNum,userId,recordTime,recordDate,recordExercise,recordCount FROM UserRecordTable WHERE userId = 'user2';

SELECT userId, userPw, userName, userAge, userPhonNum, userGender, userRegion, userStatus FROM UserTable WHERE UserNum = 1;


/* UserTable INSERT TEST */
INSERT INTO USERTABLE values(UserTable_SEQ.NEXTVAL,'user1','1234','사용자1',to_date('2002.05.10'),'01012341234','M','경기',0);
INSERT INTO USERTABLE values(UserTable_SEQ.NEXTVAL,'user2','1212','사용자2',to_date('2008.11.12'),'01011112222','F','경기',0);
INSERT INTO USERTABLE values(UserTable_SEQ.NEXTVAL,'user3','3131','사용자3',to_date('2010.07.26'),'01012341234','y','서울'); /*오류*/

SELECT * FROM USERTABLE;
SELECT * FROM UserRecordTable;



/* UserRecordTable INSERT TEST */
INSERT INTO UserRecordTable values(
	UserRecordTable_SEQ.NEXTVAL,
	'user2',
	'90',
	to_char(sysdate,'yyyy.mm.dd hh24:mi'),
	'스쿼트',
	30
);



DROP TABLE USERTABLE;
DROP TABLE UserRecordTable;
DROP SEQUENCE UserTable_SEQ;
DROP SEQUENCE UserRecordTable_SEQ;


INSERT INTO UserRecordTable values(
	UserRecordTable_SEQ.NEXTVAL,
	'user2',
	'90',
	to_date(sysdate,'yyyy.mm.dd hh24:mi'),
	'스쿼트',
	30
);

