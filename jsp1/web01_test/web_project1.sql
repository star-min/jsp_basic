use company;
select * from mem;
insert into mem values("김태균","tae","4444",0);
create table board(bno int(11) primary key auto_increment, 
	btitle varchar(100) not null,
    bcontent varchar(500) not null,
    regdate timestamp not null default now(),
    author varchar(20)
);
insert into board values (1,"게시판 샘플 제목입니다.","1여기는 게시판 샘플에 대한 첫 번째 글입니다. 자세히 보기할 경우 나오는 내용입니다.",
now(),"관리자");
insert into board values (2,"게시판 샘플 제목2입니다.","2여기는 게시판 샘플에 대한 두 번째 글입니다. 자세히 보기할 경우 나오는 내용입니다.",
now(),"관리자");
insert into board values (3,"게시판 샘플 제목3입니다.","3여기는 게시판 샘플에 대한 세 번째 글입니다. 자세히 보기할 경우 나오는 내용입니다.",
now(),"관리자");
insert into board values (4,"게시판 샘플 제목4입니다.","4여기는 게시판 샘플에 대한 네 번째 글입니다. 자세히 보기할 경우 나오는 내용입니다.",
now(),"관리자");
insert into board values (5,"게시판 샘플 제목5입니다.","5여기는 게시판 샘플에 대한 다섯 번째 글입니다. 자세히 보기할 경우 나오는 내용입니다.",
now(),"관리자");
insert into board values (6,"게시판 샘플 제목6입니다.","6여기는 게시판 샘플에 대한 여섯 번째 글입니다. 자세히 보기할 경우 나오는 내용입니다.",
now(),"관리자");
insert into board values (7,"게시판 샘플 제목7입니다.","7여기는 게시판 샘플에 대한 일곱 번째 글입니다. 자세히 보기할 경우 나오는 내용입니다.",
now(),"관리자");
insert into board values (8,"게시판 샘플 제목8입니다.","8여기는 게시판 샘플에 대한 여덟 번째 글입니다. 자세히 보기할 경우 나오는 내용입니다.",
now(),"관리자");
insert into board values (9,"게시판 샘플 제목9입니다.","9여기는 게시판 샘플에 대한 아홉 번째 글입니다. 자세히 보기할 경우 나오는 내용입니다.",
now(),"관리자");
insert into board values (10,"게시판 샘플 제목10입니다.","10여기는 게시판 샘플에 대한 열 번째 글입니다. 자세히 보기할 경우 나오는 내용입니다.",
now(),"관리자");
insert into board values (11,"게시판 샘플 제목11입니다.","11여기는 게시판 샘플에 대한 열 한 번 번째 글입니다. 자세히 보기할 경우 나오는 내용입니다.",
now(),"관리자");
insert into board values (12,"게시판 샘플 제목12입니다.","12여기는 게시판 샘플에 대한 열 두 번 번째 글입니다. 자세히 보기할 경우 나오는 내용입니다.",
now(),"관리자");
commit;
select * from board;