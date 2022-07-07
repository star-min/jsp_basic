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
seq int(38) primary key auto_increment,
title varchar(50) not null, 
content varchar(500) not null, 
nickname varchar(50) not null, 
regdate date default (current_date),
jo int(38));

select * from board order by regdate desc limit 5;

insert into board (title, content, nickname, regdate) 
		values  ('안녕하세요', '첫글입니다.', 'admin', now());
drop table board;
select * from board;
-- auto inclement 숫자자동증가

create table review (
seq int(38) primary key auto_increment,
title varchar(50) not null, 
content varchar(500) not null, 
image varchar(1000),
nickname varchar(50) not null, 
regdate date default (current_date),
jo int(38));

select * from review;

-- 상품테이블
create table goods(
gno int primary key auto_increment,  -- 상품코드
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

delete from goods where gno=1;

delete from goods;
drop table goods;
select * from goods where gcategory = 'dom';
select gno, gcategory, gname, gprice, gcolor, amount, gsize, gcontent, gimage, best, regdate from goods  where gcategory = 'dom';
select gno, gcategory, gname, gprice, gcolor, amount, gsize, gcontent, gimage, best, regdate from goods order by regdate desc;
select * from goods;

insert into goods (gcategory, gname, gprice, gcolor, amount, gsize, gcontent, gimage, best, regdate) 
		values ('tent', '미라클텐트',980000, '코튼블랙', 10, '대형', '정말좋아요', '미라클스크린텐트.jpg', 4, now());
commit;
-- 장바구니
create table basket(
bno int primary key auto_increment, -- 장바구니번호
id varchar(12),    -- 사용자아이디
gno int,             -- 상품코드
gimage varchar(1000),
gcolor varchar(40),    -- 색상
amount int,          -- 수량
gsize varchar(40),     -- 크기
bdate date);            -- 장바구니 담긴 날짜

drop table basket;
commit;
-- 장바구니 리스트 (admin용)
select * from basket; 

-- 장바구니 리스트 (사용자용)
select * from basket where id='dog';

delete from basket where bno=1;
-- 장바구니 정보
select a.bno as bno, a.id as id, a.gno as gno, a.gcolor as gcolor, a.amount as amount, a.gsize as gsize, a.bdate as bdate,
b.gcategory as gcategory, b.gname as gname, b.gprice as gprice, b.gcontent as gcontent, b.gimage as gimage, b.best as best from
basket a inner join goods b on a.gno=b.gno where a.bno=1;

-- 장바구니 수정
update basket set gcolor=?, amount=?, gsize=?, bdate=now() where bno=?;

-- 장바구니 생성
insert into basket values( 'admin', '1', '에쉬그린', 1, '대형', now());

-- 장바구니 삭제
delete from basket where bno=?;

-- 주문 정보
create table payment(
	ono int primary key auto_increment, -- 결제번호
    paytype varchar(20),   -- 결제방식
    payno varchar(30),     -- 결제카드번호
    money int,           -- 결제금액
    sdate date,             -- 결제일
    gno int,             -- 상품코드
    amount int,          -- 수량
    id varchar(20),    -- 사용자아이디
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

drop table payment;

select * from payment;
delete from payment;
insert into payment values(1, '체크카드', '100-32425-62', 730000, now(), 1, 1, cat, '야옹이', '010-1004-1004','냥냐냐냥', '냐냐냐양냥', '777');
commit;



CREATE TABLE qna(
    qno         int PRIMARY KEY auto_increment,
    qtitle       VARCHAR(600) NOT NULL,
    qcontent     VARCHAR(8000) NOT NULL,
    qwriter      VARCHAR(40) NOT NULL,
    qwritedate   DATE  default (current_date),
    qreadcnt     int DEFAULT 0,
    qroot        int,
    qstep        int default 0,
    qindent      int default 0 
);
select * from qna;
drop table qna;


create table databank(
seq int not null auto_increment,
title varchar(200) not null,
fileurl varchar(300) not null,
author varchar(20),
primary key (seq));
