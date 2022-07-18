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
insert into notice(title, content, nickname) value ('AI개발에 따른 파이썬의 독보적인 인기를 실감하는...', '미안하다 이거보여주려고 어그로 끌었다', 'admin');
insert into notice(title, content, nickname) value ('통계적 자료분석을 위한 프로그래밍언어 R 의 비밀', '사실 비밀은 없고 컴공 에서 통계나 데이터분석강의를 들으면 사용하더라구요 이것도 배워놓으면 어딘가에 쓸일이 있겠죠? 잊어버려도 알수있게 잘 정리해 놓아야 겠네요', 'admin');
insert into notice(title, content, nickname) value ('관리자의 아무말 대잔치 이대로 괜찮은가!', '몰?루', 'admin');
insert into notice(title, content, nickname) value ('공지합니다.', '공지', 'admin');
insert into notice(title, content, nickname) value ('인도에서온 시니어 노마드', '최근 부쩍 제가 자바스크립트에 취약하다는것을 깨닫고있습니다 그러던중 즐겨보는 유튜버 노마드코더의 강의를 들어보는것은 어떨까 생각하게 되었습니다.', 'admin');
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

-- 보도자료
create table bodoboard (
seq int(38) primary key auto_increment,
title varchar(50) not null, 
content varchar(500) not null, 
nickname varchar(50) not null, 
regdate date default (current_date),
visited int(38));

select * from bodoboard;
drop table bodoboard;

insert into bodoboard(title, content, nickname) value ('이곳은 제목칸 입니다.', '이곳은 컨텐츠 자리입니다.', 'admin');
insert into bodoboard(title, content, nickname) value ('나는 ㄱr끝 눈물 흘린ㄷr....', '음악은 나라에서 허락한 유일한 마약이니까.....', 'admin');
insert into bodoboard(title, content, nickname) value ('보도드립니다 현재 서울시 한복판에 스파이더맨이..', '스파이더맨이 누구지?', 'admin');
insert into bodoboard(title, content, nickname) value ('지금앞에서는 강사님이 한참 마켓을 만들고 있습니다.', '주눅이 드는군뇨 ....', 'admin');
insert into bodoboard(title, content, nickname) value ('현재 mz세대와 x세대의 갈등이 심화되고있는 가운데.', '오른쪽 왼쪽 위아래 위위아래.', 'admin');

insert into bodoboard(title, content, nickname) value ('이곳은 제목칸 입니다2.', '이곳은 컨텐츠 자리입니다2.', 'admin');
insert into bodoboard(title, content, nickname) value ('절차지향 프로그램에대해.', '함수를 만들고 순차적으로 프로그램이 동작하는방식. 객체나 클래스를 만들필요없이 바로 코딩 가능, 함수호출가능, 프로그램흐름을 쉽게 추적가능', 'admin');
insert into bodoboard(title, content, nickname) value ('객체지향 프로그램에대해', '각 객체에서 수행할 수 있는 함수랑 필드를 묶어서 하나의 클래스로 만들고 기능을 객체로 만들어 동작하는 방식.', 'admin');
insert into bodoboard(title, content, nickname) value ('자바는 운영체제가 독립적입니다.', 'JVM위에서 실행되기 때문에 os관계없이 작동합니다.', 'admin');
insert into bodoboard(title, content, nickname) value ('자바는 컴파일러 언어 입니다.', '컴파일되면 결과를 확인할 수 있고, 코드를 수정한다고 해도 다시 컴파일 할때까지 같은 결과를 나타낸다.', 'admin');
insert into bodoboard(title, content, nickname) value ('자바 vs 파이썬 그것이 문제로다', '자바는 정적타이핑 언어이고 파이썬은 동적타이핑 언어입니다 제생각에는 파이썬을먼저 배워서 그런지 자바가 불편하다고 생각했으나 스프링부트를 만나고 자바를 왜 사용하는지 이해되기 시작했습니다.', 'admin');

select * from bodoboard order by regdate desc limit 4;

commit;

-- 언론 보도 설명
create table psboard (
seq int(38) primary key auto_increment,
title varchar(50) not null, 
content varchar(500) not null, 
nickname varchar(50) not null, 
regdate date default (current_date),
visited int(38));

select * from psboard;
select * from psboard order by regdate desc limit 5;
insert into psboard(title, content, nickname) value ('이곳은 제목칸 입니다2.', '이곳은 컨텐츠 자리입니다2.', 'admin');
insert into psboard(title, content, nickname) value ('언론보도란 무엇인가', '매체를통해 자신의 생각을 알리는것 입니다.', 'admin');
insert into psboard(title, content, nickname) value ('정확성', '시사 보도 프로그램은 그 주제나 소재를 막론하고 취재 내용의 정확성과 진실성을 추구하는 것을 최우선 원칙으로 한다.', 'admin');
insert into psboard(title, content, nickname) value ('공정성', '시사 보도 프로그램은 사회적으로 논란이 될 수 있는 사안을 다룸에 있어 개방적인 마음가짐으로 객관적이고 균형 잡힌 입장을 유지하기 위해 노력한다. ', 'admin');
insert into psboard(title, content, nickname) value ('다양성', '시사・보도 프로그램은 우리 사회의 다양한 목소리에 최대한 귀 기울이고자 노력한다.', 'admin');
insert into psboard(title, content, nickname) value ('사회적 책임', '시사・보도 프로그램은 공공재인 전파를 이용해 불특정 다수에게 전달되며 사회적인 영향력이 크다.', 'admin');
drop table psboard;
commit;

-- 채용정보
create table employboard (
seq int(38) primary key auto_increment,
title varchar(50) not null, 
region varchar(50) not null,
content varchar(500) not null, 
nickname varchar(50) not null, 
regdate date default (current_date)
);

insert into employboard(title, region, content, nickname) value ('[서울] 함께하실분 모십니다..', '서울', '커닝시티 하수구앞으로 모여주세요', 'admin');
insert into employboard(title, region, content, nickname) value ('[경기] 통계에 빠삭하신분 우대', '일산', '프로그래밍언어 R 또는 다른 통계프로그램 을 사용하실수 있어야 합니다.', 'admin');
insert into employboard(title, region, content, nickname) value ('[경기] 가족같은 분위기에서', '파주', '분위기만 가족입니다.', 'admin');
insert into employboard(title, region, content, nickname) value ('[강원] 백앤드분 모집합니다 간식으로 감자가..', '강원', '군대에서 강원도 에서 온 후임이있었는데 가장가까운 마트가 오토바이타고 20분걸리는 농협이고 학교에 전교생이 7명이랍니다.', 'admin');
insert into employboard(title, region, content, nickname) value ('[전남] 목포가 전남이라는 사실', '목포', '전라도는 어렸을적 전주 말고는 가본적이 없네요 식당마다 상다리 휘어지게 차려주는 반찬들이 인상적이었습니다.', 'admin');

drop table employboard;