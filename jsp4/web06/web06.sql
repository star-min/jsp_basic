create database ksmstat;
use ksmstat;

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

-- 공지사항
create table notice(
seq int(100) primary key auto_increment,
title varchar(400),
content varchar(2000),
nickname varchar(50),
regdate date default (current_date),
visited int);

drop table notice;
select * from notice;
insert into notice(title, content, nickname) value ('자바의 왕국 대한민국 파이썬에 무너지나!?', '국내 프로그래밍언어 채용률 80%를 점유하던 자바의 영원할것 같던 독주를 파이썬이 빠르게 치고올라오고 있습니다 파이썬은 쉬운 입문과 광범위한 범용성 무엇보다도 빅데이터와 블록체인등 에 강세를 보이며', 'admin');
select * from notice order by seq desc, regdate desc;
commit;

create table databank(
datano int(100) primary key auto_increment,
dtitle varchar(300),
dcontent varchar(2000),
dposter varchar(2000),
dfilename varchar(300),
dview varchar(100),
regdate date default (current_date)
);

drop table databank;