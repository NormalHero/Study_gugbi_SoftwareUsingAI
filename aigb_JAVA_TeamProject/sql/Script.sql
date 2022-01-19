
CREATE SEQUENCE USER_NUM_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 5 CYCLE NOCACHE;

/*
CYCLE OR NOCYCLE --CYCLE ������ �ִ밪�� �����ϸ� �ּҰ����� �ٽ� ���� NOCYCLE ������ �ִ밪 ���� �� ������ ��������
CACHE OR NOCACHE --CACHE ������ �޸𸮿� ������ ���� �̸� �Ҵ��ϰ� NOCACHE ������ ���������� �޷θ��� �Ҵ����� ����
*/

CREATE TABLE TEST_TABLE (
	userNum NUMBER PRIMARY KEY,
	NAME VARCHAR2(100),
	AGE	NUMBER 
);

DROP TABLE TEST_TABLE;
DROP SEQUENCE USER_NUM_SEQ;

INSERT INTO testTable
VALUES('�����1',20);


SELECT NAME FROM TESTTABLE WHERE NAME='�����1';

INSERT INTO TEST_TABLE (userNum, NAME, AGE) values(USER_NUM_SEQ.NEXTVAL,'�����1',19);
INSERT INTO TEST_TABLE (userNum, NAME, AGE) values(USER_NUM_SEQ.NEXTVAL,'�����2',19);
INSERT INTO TEST_TABLE (userNum, NAME, AGE) values(USER_NUM_SEQ.NEXTVAL,'�����3',19);
INSERT INTO TEST_TABLE (userNum, NAME, AGE) values(USER_NUM_SEQ.NEXTVAL,'�����4',19);
INSERT INTO TEST_TABLE (userNum, NAME, AGE) values(USER_NUM_SEQ.NEXTVAL,'�����5',19);
INSERT INTO TEST_TABLE (userNum, NAME, AGE) values(USER_NUM_SEQ.NEXTVAL,'�����6',19);
SELECT * FROM TEST_TABLE;





/*UserTable
-----------------
userNum : num (�ڵ�����,������) // ȸ����ȣ
-----------------
userPhoneNum : varchar2(500) // ��ȭ��ȣ
userName : varchar2(500)    // �̸� 
userId  : varchar2(500) uk //  ���̵�
userAge : varchar2(500) // ����
userPw : varchar2(500)  // ��й�ȣ
userGender  : varchar2(500)  // ����
userAddress : varchar2(500) // ����*/ ---> region�� �������� ��Ȯ �� �� �ִ�. 


/*UserTable �ڵ����� ������ */
CREATE SEQUENCE UserTable_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 10 CYCLE NOCACHE;
/*UserRecordTable �ڵ����� ������ */
CREATE SEQUENCE UserRecordTable_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 10 CYCLE NOCACHE;



/*UserTable ���̺� */
CREATE TABLE UserTable(
userNum NUMBER PRIMARY KEY,
userId   varchar2(500) UNIQUE,
userPw  varchar2(500) NOT NULL,
userName  varchar2(500) NOT NULL,  
userAge  DATE NOT NULL,
userPhonNum varchar2(500) NOT NULL,
userGender CHAR(1) DEFAULT 'F' NOT NULL CONSTRAINT CK_CHAR CHECK(userGender IN('M','F')),
userRegion  varchar2(500)  DEFAULT '����' NOT NULL CONSTRAINT CK_varchar 
CHECK(userRegion IN('����','���', '��û', '����', '���', '���', '�λ�', '�뱸', '����', '����'
, '����', '�泲', '���', '�泲', '����', '����', '����')),
userStatus NUMBER DEFAULT '0' NOT NULL CONSTRAINT CK_Status CHECK(userStatus IN('0','1'))
);



--��ȭ��ȣ �߰�


/*CREATE TABLE UserRecordTable(
recordNum  NUMBER PRIMARY KEY , 
userNum NUMBER  NOT NULL,
recordTiem  NUMBER NOT NULL ,
recordDate  date NOT NULL,
recordExercise  varchar2(500) NOT NULL, 
recordCount  NUMBER NOT NULL,
CONSTRAINT FK_USERID FOREIGN KEY(userNum) REFERENCES UserTable(userNum)
);*/

/*UserRecordTable ���̺� */
CREATE TABLE UserRecordTable(
recordNum  NUMBER PRIMARY KEY , 
userId   varchar2(500)  NOT NULL,
recordTime  NUMBER NOT NULL ,
recordDate  varchar2(500) NOT NULL,
recordExercise  varchar2(500) NOT NULL, 
recordCount  NUMBER NOT NULL,
CONSTRAINT FK_USERID FOREIGN KEY(userId) REFERENCES UserTable(userId)
);

/* ���������� ����� ���� ��ȸ*/
SELECT userNum,userPw, userName, userAge, userPhoneNum, userGender, userRegion FROM UserTable WHERE UserNum = 1;

/* ����� ��ü��ȸ*/
SELECT recordNum,userId,recordTime,recordDate,recordExercise,recordCount FROM UserRecordTable WHERE userId = 'user2';

SELECT userId, userPw, userName, userAge, userPhonNum, userGender, userRegion, userStatus FROM UserTable WHERE UserNum = 1;


/* UserTable INSERT TEST */
INSERT INTO USERTABLE values(UserTable_SEQ.NEXTVAL,'user1','1234','�����1',to_date('2002.05.10'),'01012341234','M','���',0);
INSERT INTO USERTABLE values(UserTable_SEQ.NEXTVAL,'user2','1212','�����2',to_date('2008.11.12'),'01011112222','F','���',0);
INSERT INTO USERTABLE values(UserTable_SEQ.NEXTVAL,'user3','3131','�����3',to_date('2010.07.26'),'01012341234','y','����'); /*����*/

SELECT * FROM USERTABLE;
SELECT * FROM UserRecordTable;



/* UserRecordTable INSERT TEST */
INSERT INTO UserRecordTable values(
	UserRecordTable_SEQ.NEXTVAL,
	'user2',
	'90',
	to_char(sysdate,'yyyy.mm.dd hh24:mi'),
	'����Ʈ',
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
	'����Ʈ',
	30
);

