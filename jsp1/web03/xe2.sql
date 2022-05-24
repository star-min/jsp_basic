--공지사항 테이블(아마)
create table board (seq number(38) primary key,title varchar2(50) not null, content varchar2(500) not null, nickname varchar2(50) not null, regdate date, jo number(38));
--더미데이터 생성
insert into board values(1, '안녕하세요 제가 첫빠네요', '이곳이 내용칸이로군요 흥미롭습니다.', 'admin', sysdate, 0);
insert into board values((select nvl(max(seq), 0)+1 from board), '휴대폰 요금에 관한 고찰', '요금제보단 약정으로 인한 금액이 더 비싼것 같아요 약정이 4년인데 왜이리 비싼건지 다음부터는 조금더 신중히 선택해야겠네요', '김성민', sysdate, 0);
insert into board values((select nvl(max(seq), 0)+1 from board), '지금은 마지막 시간입니다.', '하지만 이걸 보고있는 당신은 다를수도 있습니다.', '학원생', sysdate, 0);
insert into board values((select nvl(max(seq), 0)+1 from board), '최강의 햄버거 프렌차이즈 투표', '결과는 1위 맘스터치, 2위 노브랜드, 3위 버거킹, 4위 맥도날드, 꼴찌 롯데리아   투표는 내맘속에서 했고 님들 롯데리아갈바엔 편의점햄버거드세요', '알바맨', sysdate, 0);
insert into board values((select nvl(max(seq), 0)+1 from board), '난 이 게시판에 갇혀있어! 꺼내줘!', '랄까나?', '농담두', sysdate, 0);
insert into board values((select nvl(max(seq), 0)+1 from board), '제가 즐겨보는 스트리머가 있는데', '사실 우왁굳보다 고멤이 더 재미있습니다 왁굳형 감 많이 떨어진것같아요 차가리만 준내하구 고멤합방이나 많이해줘 형 그리고 리뷰할때 제발 스킵좀하지마 멀미날것같아', '시청자', sysdate, 0);
--테이블 board 검색
select * from board;
select * from board where seq=?;
--테이블 board 내용 수정
update board set title=?, content=?, nickname=?, regdate=?, jo=? where seq=?;
--테이블 board의 내용 삭제
delete from board;

commit;

-- 회원테이블
create table human (hid varchar2(50) primary key, hpw varchar2(50) not null,
hname varchar2(50) not null, tel varchar2(100) not null, 
email varchar2(200) not null, birth date,joinday date Default SYSDATE);
-- 더미데이터 생성
insert into human values ('admin', '1234', '관리자', '010-1234-1234', '1234@1234.1234', sysdate, sysdate);
insert into human values ('zxzx001', '1004', '김성민', '010-1004-1004', 'zxzx1004@good.net', '1995-05-22', sysdate);
insert into human values ('academy', '1111', '학원생', '010-1111-1111', 'acade@hello.com', '1998-02-30', sysdate);
insert into human values ('eggbarman', '2222', '알바맨', '010-1222-1222', 'eggbarman@naver.com', '2003-10-02', sysdate);
insert into human values ('nongdam', '3333', '농담두', '010-2323-2323', 'nong@dam.do', '1992-04-27', sysdate);
insert into human values ('play', '4444', '시청자', '010-3334-4444', 'playboy@streming.com', '2005-07-12', sysdate);
-- 테이블 human 검색
select * from human;
select * from human where hid=?;
--테이블 human 수정
update human set hpw=?, hname=?, tel=?, email=?, birth=?, joinday=? where hid=?;
--테이블 내용 삭제
delete from human;


commit;