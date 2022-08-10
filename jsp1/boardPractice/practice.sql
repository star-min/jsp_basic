-- 익명의 게시판
-- 글번호 제목 내용 작성자 작성시간
create table board1(
seq varchar(50) primary key,
title varchar2(100) not null,
content varchar2(1000) not null,
writer varchar2(20) not null,
regdate date default sysdate
);
select * from board1;

insert into board1 VALUES (1, '게시판을 연습해야 합니다.', '절때 교육기간중 떨어질수는 없습니다.', '성미니', sysdate);
-- 자동증가 시퀀스 (select nvl(max(seq), 0)+1 from board1)