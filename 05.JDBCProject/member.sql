--- SQL
--- 1) 데이터 정의 언어(DDL) :	create, alter, drop
--- 2) 데이터 조작 언어(DML) : insert, update, delete, select
--- 3) 데이터 제어 언어(DCL) : grant, revoke

-- 테이블 생성
create table member
( --컬럼이름       컬럼타입
	id 			varchar2(15) 	primary key,   --varchar 가변길이
	password 	varchar2(10),
	name 		varchar2(20),
	age 		number,
	gender 		char(1),        --고정길이 1이면 남자, 2이면 여자
	addr 		varchar2(100),
	regdate 	date  			default sysdate	   --date는 날짜형
)

select * from MEMBER where id='test2'


insert into member
values('test2', '1234', '홍길동', 20, '1', '서울시', '2015-04-17')

insert into member
values('test2', '1234', '홍길동', 20, '1', '서울시', sysdate)

drop table member  --테이블 전부 삭제

update member
set addr ='경기도'
where id ='test1'

delete member where id='dbfl1'