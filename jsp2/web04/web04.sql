create table mem(userid varchar2(20) primary key,
userpw varchar2(300) not null,
username varchar2(100) not null,
email varchar2(100) not null,
tel varchar2(20) not null,
addr1 varchar2(200),
addr2 varchar2(100),
postcode varchar2(10),
regdate date default sysdate,
birth date,
userpoint number default 100,
visited number default 0
);

select * from mem;
drop table mem;


create table board(seq number primary key,
title varchar2(100) not null,
content varchar2(800) not null,
nickname varchar2(20),
regdate date,
visited number
);
select * from board;
drop table board;
select seq, title, content, regdate, nickname, visited from board order by regdate desc


create table databank (
    datano number primary key,
    dtitle varchar2(255) not null,
    dcontent varchar2(1000),
    dposter varchar2(255),
    dfilename varchar2(255),
    dview char(1) default 'Y',
    regdate date default sysdate
);
