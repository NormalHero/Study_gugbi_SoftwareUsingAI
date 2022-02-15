use test;
select * from guest;

drop table `user`;
create table `user`(
	userNum	int unsigned auto_increment primary key,
	userId varchar(1000),
	userName varchar(1000),
	userPw	varchar(1000),
	userGender char(1),
	userZipcode varchar(1000)
);


insert into `user`(userName, userId,userPw, userGender, userZipcode)
values ('박민수', 'park1234',hex(aes_encrypt('1234', 'abc')), 'm','서울 강남구 강남대로 298');
insert into `user`(userName, userId,userPw, userGender, userZipcode)
values ('이찬우', 'lcw1234',hex(aes_encrypt('1234', 'abc')), 'm','서울 강남구 강남대로 298');

select * from `user`; 

select userName, aes_decrypt(unhex(userPw),'abc'), userGender, userZipcode from `user`;

select count(userId) from `user` where userId = 'park1234';

hex(aes_encrypt('1234', 'abc'))

aes_decrypt(unhex(userPw), 'abc')