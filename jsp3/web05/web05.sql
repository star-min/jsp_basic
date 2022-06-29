create database veryvery;
commit;
use veryvery;

-- 회원 table
create table member(
id varchar(12),
pwd varchar(100) not null,
uname varchar(20) not null,
birth date,
phone varchar(13) not null,
email varchar(50) not null,
addr1 varchar(500),
addr2 varchar(500),
postcode varchar(100),
regdate date default (current_date),
primary key(id), unique key(email), unique key(phone)
);

insert into member(id, pwd, uname, birth, phone, email) values ('admin','1234','관리자','2022-06-28','031-902-1777','admin@veryvery.com');
insert into member(id, pwd, uname, birth, phone, email) values ('dog','1234','강아지','2022-06-21','010-902-1000','dog@veryvery.com');
insert into member(id, pwd, uname, birth, phone, email) values ('cat','1234','고양이','2022-06-20','010-1004-1004','cat@veryvery.com');
insert into member(id, pwd, uname, birth, phone, email) values ('ramen','1234','너구리','2022-06-18','010-4282-3536','ramen@veryvery.com');
insert into member(id, pwd, uname, birth, phone, email) values ('duk','1234','오리','2022-05-02','010-2421-3237','duk@veryvery.com');
drop table member;
select * from member order by regdate desc;
select * from member;
commit;
-- 공지사항
create table board (
seq int(38) primary key,
title varchar(50) not null, 
content varchar(500) not null, 
nickname varchar(50) not null, 
regdate date default (current_date),
jo int(38));


select * from board;
-- auto inclement 숫자자동증가

-- 상품테이블
create table goods(
gno int primary key,  -- 상품코드
gcategory varchar(100),    -- 카테고리
gname varchar(100),    -- 상품명
gprice int,  -- 가격
gcolor varchar(40),    -- 색상
amount int,  -- 수량
gsize varchar(40), -- 크기
gcontent varchar(1000),    -- 설명
gimage varchar(1000),  -- 이미지
best int,    -- 인기도
regdate date);  -- 등록일

-- 장바구니
create table basket(
bno int primary key, -- 장바구니번호
userid varchar(20),    -- 사용자아이디
gno int,             -- 상품코드
gcolor varchar(40),    -- 색상
amount int,          -- 수량
gsize varchar(40),     -- 크기
bdate date);            -- 장바구니 담긴 날짜

-- 주문 정보
create table payment(
	ono int primary key, -- 결제번호
    paytype varchar(20),   -- 결제방식
    payno varchar(30),     -- 결제카드번호
    money int,           -- 결제금액
    sdate date,             -- 결제일
    gno int,             -- 상품코드
    amount int,          -- 수량
    userid varchar(20),    -- 사용자아이디
	rname varchar(30),     -- 수신자명
    tel varchar(20),       -- 수신자전화번호
    addr1 varchar(200),    -- 수신자 기본주소
    addr2 varchar(100),    -- 수신자 상세주소
    postcode varchar(10),  -- 수신자 우편번호
    transno varchar(50),   -- 배송코드
    transco varchar(50),   -- 배송회사
    rstatus varchar(20),   -- 수신상태
    rdate date,             -- 도착일
	memo varchar(100)     -- 메모
);
commit;