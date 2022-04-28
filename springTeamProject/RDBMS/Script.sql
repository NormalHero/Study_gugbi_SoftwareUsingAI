# DB초기설계

/*DB설계


TBL_USER  (회원)

userNum(seq) pk
userId
userPw
userNick
userEmail
userGender
userPhoneNum
userStatus
(탈퇴-1,관리자0,회원1)
충전금액(chargeAmount)
포인트 잔액
받은 소설 후원금액
받은 일러스트 후원금액



TBL_NOVEL( 소설 )
			소설번호(PK)
			작성자회원번호(FK)
소설제목
novelWRITER(FK)
해쉬태그 ex : #로맨스#메카물#마법사
작성시간
수정시간
요일
카테고리
찜횟수
총 후원금액
작품상태 (0 휴재, 1 연재, 2 완결)
정기연재 / 자유연재 상태


			
TBL_SUBNO*****(소설의 한 회차)

			회차번호 (PK)
			소설번호(FK)
novelTITLE
novelWRITER
작성시간
수정시간
요일
조회수
회차의 좋아요수



TBL_NOVEL*****REPLY( 한 회차의 댓글)

댓글번호(PK)
댓글작성자(FK)
댓글내용
댓글작성시간
댓글수정시간
추천
비추천
신고
(이모티콘)
(프로필사진)

포인트 결제(캐쉬충전) -> [현금을 포인트로]
		거래번호(PK)
		회원번호(FK)
		충전금액 // 실제 사용자가 결제한금액
		포인트    // 환전된 포인트 

TBL_SUPPORT후원 (전체, 회차)
후원번호 (PK)
			후원한 사람 (FK)
후원 받은 사람 (FK)
			소설이름(또는 번호) (FK)
			후원 금액 // 차감 포인트
			후원한 일시 
			
TBL_BUY회차 구매
		회차 구매번호(PK)
소설번호 (FK)
		소설회차번호  (FK)
		차감포인트
		구매 일시
		상태
회원번호


TBL_내 서재
		소장 작품(PK)
최근 기록(작품번호, 회차번호, 열람시간)
찜한 작품->소설 번호(FK)
		회원 번호 (FK)


TBL_찜한 소설	
소설번호(FK)
신규 회차 여부
회원번호(FK)

TBL_찜한 일러스트 by 승근
일러스트번호(FK)
찜한 회원번호(FK)


TBL_일러스트
		일러스트번호(PK)
		일러스트제목
		내용 // 글
		일러스트 파일경로 (FK)
작성자/닉네임(FK)
		





TBL_소설원고파일
		파일번호(소설원고)
		회원번호
		작성자(닉네임)
		경로 
		원본파일이름
		파일이름
		작성시간
수정시간

	
TBL_일러스트이미지파일
		파일번호(일러스트)
		회원번호
		작성자(닉네임)
		경로
		원본파일이름
		파일이름	
		작성시간
수정시간


—----------(소켓사용 채팅 구현)-------------

채팅(방)
		회원번호(목록소유자)
		senderNum( 보낸사람)
생성일시
 
메시지	
		메시지번호(PK)
		채팅방번호 (FK)
		작성자회원번호(FK) // 보내는사람
		받는사람 (FK) 
		내용
첨부파일여부  
첨부파일번호
		작성시간

메시지 첨부파일 
		파일번호(메시지)(PK)
채팅방번호 (FK)
		보낸사람 회원번호(FK)
		받는사람 회원번호(FK)
		경로
		원본파일이름
		파일이름	
		작성시간
수정시간
		



일러스트구매내역
		거래번호(PK)
		일러스트게시글번호(FK)
		일러스트작가(FK)
		구매시간
		구매한사람(FK)
	
		*/
		








—---------------------------------------------
회의가 더 필요한 테이블
—---------------------------------------------



/*FK 추가 미완성*/

CREATE SEQUENCE USER_SEQ;

/*회원*/
CREATE TABLE TBL_USER(
	USERNUM NUMBER(50) PRIMARY KEY,
	USERID VARCHAR2(1000),
	USERPW VARCHAR2(1000),
	USERNICK VARCHAR2(1000),
	USEREMAIL VHARCHAR2(1000),
	USERGENDER NUMBER(50),
	USERPHONENUM VARCHAR2(1000),
	USERSTATUS NUMBER(50),
	CHARGEAMOUNT NUMBER(100), /*연산을 해야하니까 NUMBER?*/
	POINTBALANCE NUMBER(100),
	NOVELSPONAMOUNT NUMBER(100), /*받은 소설 후원금액*/
	ILLUSPONAMOUNT NUMBER(100) /*받은 일러스트 후원금액*/
);

/*소설(목록)*/
CREATE TABLE TBL_NOVEL(
	NOVELNUM NUBMER(50) PRIMARY KEY,
	USERNUM NUMBER(50), /*FK, 작성자 회원번호*/
	NOVELTITLE VARCHAR2(1000),
	NOVELWRITER VHARCHAR2(1000),/*FK*/
	HASHTAG VARCHAR2(1000), /*예) #로맨스 #메카물 #마법사*/
	UPLOADDATE DATE DEFAULT SYSDATE,
	UPDATEDATE DATE DEFAULT SYSDATE,
	NOVELWEEK VARCHAR2(1000), /*"요일" 컬럼명 괜찮은지..?*/
	NOVELCATEGORY VARCHAR2(1000),
	MYNOVEL NUMBER(50), /*"찜횟수" 컬럼명 괜찮은지..?*/
	TOTALSPONAMOUNT NUMBER(100), /*총후원금액*/
	NOVELSTATUS NUMBER(50), /*작품 상태 0휴재, 1연재, 2완결*/
	REGULAR_FREE NUMBER(50) /*정기연재 OR 자유연재 상태*/
);

/*소설(한 회차)*/
CREATE TABLE TBL_SUBNOVEL(
	CHAPTERNUM NUMBER(50) PRIMARY KEY,
	NOVELNUM NUMBER(50),/*FK*/
	NOVELTITLE VARCHAR2(1000),
	NOVELWRITER VARCHAR2(1000),
	UPLOADDATE DATE DEFAULT SYSDATE,
	UPDATEDATE DATE DEFAULT SYSDATE,
	NOVELWEEK VARCHAR2(1000), /*"요일" 컬럼명 괜찮은지..?*/
	VIEWCOUNT NUMBER(50), /*조회수*/
	LIKECOUNT NUMBER(50), /*좋아요 수*/
	/*...*/
	CONSTRAINT fk_NOVELNUM FOREIGN KEY(NOVELNUM) REFERENCES TBL_NOVEL(NOVELNUM)
);

/*한 회차의 댓글*/
CREATE TABLE TBL_NOVELREPLY(
	REPLYNUM NUMBER(50) PRIMARY KEY,
	REPLYWRITER VARCHAR2(1000),/*FK*/
	REPLYCONTENT VARCHAR2(3000),
	REPLYUPLOADDATE DATE DEFAULT SYSDATE, /*댓글 작성 시간*/
	REPLYUPDATEDATE, /*댓글 수정 시간*/
	REPLYUP, /*추천*/
	REPLYDOWN, /*비추천*/
	REPLYREPORT, /*신고*/
	/*REPLYEMOTE(보류중)*/
	/*PROFILEPICTURE(보류중)*/
);

/*포인트 결제(캐쉬충전, 현금을 포인트로)*/
CREATE TABLE TBL_POINT(
	PAYNUM NUMBER(50) PRIMARY KEY, /*거래번호*/
	USERNUM NUMBER(50),/*FK*/
	CHARGEAMOUNT NUMBER(100), /*실제 사용자가 결제한 금액*/
	POINT /*환전된 포인트*/
);

/*후원(전체, 회차)*/
CREATE TABLE TBL_SUPPORT(
	SPONNUM NUMBER(50) PRIMARY KEY,
	SPONSER VARCHAR(1000), /*FK, 후원한 사람*/
	THANKYOUSPON VHARCHAR(1000), /*FK, 후원 받은 사람 컬럼명 어케...?*/
	NOVELNUM NUMBER(50), /*FK, 소설 번호*/
	SPONAMOUNT NUMBER(100), /*후원 금액 = 차감 포인트*/
	SPONDATE DATE DEFAULT SYSDATE /*후원 날짜*/
);

/*회차 구매*/
CREATE TABLE TBL_BUY(
	BUYNUM NUMBER(50) PRIMARY KEY, /*회차 구매번호*/
	NOVELNUM NUMBER(50), /*FK, 소설번호*/
	CHAPTERNUM NUMBER(50), /*FK, 회차번호*/
	MINUSPOINT NUMBER(50), /*차감포인트*/
	BUYDATE DATE DEFAULT SYSDATE, /*구매날짜*/
	BUYSTATUS NUMBER(50),
	USERNUM NUMBER(50)
);

/*내 서재*/
CREATE TABLE TBL_MYLIBRARY(
	COLLECTION VARCHAR2(1000) PRIMARY KEY, /*소장 작품*/
	RECENTRECORD VARCHAR2(1000), /*작품번호, 회차번호, 열람시간*/
	NOVELNUM NUMBER(50), /*FK, 찜한 작품을 소설 번호로 가져온다*/
	USERNUM NUMBER(50) /*FK*/
);

/*찜한 소설*/
CREATE TABLE TBL_MYNOVEL(
	NOVELNUM NUMBER(50), /*FK*/
	신규회차여부, /*컬럼명 어케..!*/
	USERNUM NUMBER(5) /*FK*/
);

/*일러스트*/
CREATE TABLE TBL_MYILLU(
	ILLUNUM NUMBER(50) PRIMARY KEY,
	ILLUTITLE VARCHAR2(1000),
	ILLUCONTENT VARCHAR2(3000),
	ILLUFILEPATH VARCHAR2(1000), /*FK, 일러스트 파일 경로*/
	ILLUWRITER VARCHAR2(1000) /*FK*/
);

/*찜한 일러스트*/
CREATE TABLE TBL_ILLU(
	ILLUNUM NUMBER(50),
	USERNUM(50) /*FK, 찜한 회원번호*/
);

/*소설원고파일*/
CREATE TABLE TBL_NOVELFILE(
	NOVELFILENUM NUMBER(50), /*파일번호, 소설원고*/
	USERNUM NUMBER(50),
	NOVELWRITER VARCHAR2(1000),
	FILEPATH VARCHAR2(1000),
	ORIGINFILENAME VARCHAR2(1000),
	FILENAME VARCHAR2(1000),
	UPLOADDATE DATE DEFAULT SYSDATE,
	UPDATEDATE DATE DEFAULT SYSDATE
);

/*일러스트 이미지파일*/
CREATE TABLE TBL_ILLUFILE(
	ILLUFILENUM NUMBER(50),
	USERNUM NUMBER(50),
	ILLUWRITER VARCHAR2(1000),
	FILEPATH VARCHAR2(1000),
	ORIGINFILENAME VARCHAR2(1000),
	FILENAME VARCHAR2(1000),
	UPLOADDATE DATE DEFAULT SYSDATE,
	UPDATEDATE DATE DEFAULT SYSDATE
);


/*소켓사용 채팅 구현*/
/*채팅,결제 관련 테이블(일러스트)*/
/*일러스트 작가 <-> 글작가 포인트*/

/*채팅(방)*/
CREATE TABLE TBL_CHAT(
	USERNUM NUMBER(50), /*목록 소유자*/
	SENDERNUM NUMBER(50), /*보낸 사람*/
	CREATIONDATE DATE DEFAULT SYSDATE, /*생성날짜*/	
);












             



