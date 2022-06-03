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
hname varchar2(50) not null, tel varchar2(100) not null,addr1 varchar2(200),addr2 varchar2(100), postcode varchar2(10),
email varchar2(200) not null, birth date,joinday date Default SYSDATE);
-- 더미데이터 생성
insert into human values ('admin', '1234', '관리자', '010-1234-1234','','','', '1234@1234.1234', sysdate, sysdate);
insert into human values ('zxzx001', '1004', '김성민', '010-1004-1004','','','', 'zxzx1004@good.net', '1995-05-22', sysdate);
insert into human values ('academy', '1111', '학원생', '010-1111-1111','','','', 'acade@hello.com', '1998-02-30', sysdate);
insert into human values ('eggbarman', '2222', '알바맨', '010-1222-1222','','','', 'eggbarman@naver.com', '2003-10-02', sysdate);
insert into human values ('nongdam', '3333', '농담두', '010-2323-2323','','','', 'nong@dam.do', '1992-04-27', sysdate);
insert into human values ('play', '4444', '시청자', '010-3334-4444','','','', 'playboy@streming.com', '2005-07-12', sysdate);
-- 테이블 human 검색
select * from human;
select * from human where hid=?;
--테이블 human 수정
update human set hpw=?, hname=?, tel=?, email=?, birth=?, joinday=? where hid=?;
--테이블 내용 삭제
delete from human;
--테이블 삭제
drop table human;
--패스워드 암호화
update human set hpw='MTIzNA==' where hid='admin';
update human set hpw='MTAwNA==' where hid='zxzx001';
update human set hpw='MjIyMg==' where hid='eggbarman';
update human set hpw='MzMzMw==' where hid='nongdam';
update human set hpw='NDQ0NA==' where hid='play';



--보충제테이블
create table powder (pno number primary key, 
pgory varchar2(1000) not null,
pname varchar2(100) not null,
pprice number not null,
ptaste varchar2(50) not null,
pamount number not null,
pcomment varchar2(1000),
pimage varchar2(1000),
pinday date Default SYSDATE);

insert into powder values (1, '보충제', '엑스텐드 프로 웨이 아이솔레이트 64서빙', 95057, '리얼초코', 1, 
'엑스텐드가 BCAA만 잘 만든다? 그것은 편견! 엑스텐드에서 만든 최고의 프로틴이 여기에 있습니다! 엑스텐드 프로 웨이 아이솔레이트! (5파운드, 64서빙)', 
'./img/xtend.jpg', sysdate);
insert into powder values ((select nvl(max(pno), 0)+1 from powder), '보충제', '머슬피스트 Grass Fed WPI 37서빙', 69696, '리얼초코', 1, 
'유기농 WPI를 최고의 가격에 먹을 수 있는 기회! 머슬피스트 Grass Fed 웨이 프로틴 아이솔레이트 37서빙!', 
'./img/pist.jpg', sysdate);
insert into powder values ((select nvl(max(pno), 0)+1 from powder), '보충제', '100% 골드 스탠다드 웨이 네츄럴 68서빙', 81115, '리얼초코', 1, 
'어떤 특징이 있나요? 
- 합성 감미료 없이 100% 천연 제품
- 무 색소
- 금지된 성분 일체 무사용
- 고품질의 WPI 단백질
- 4g이상의 글루타민 함유
- 5g의 BCAA 함유
- 골드 스탠다드와 같은 품질의 고급 단백질', 
'./img/way.jpg', sysdate);
insert into powder values ((select nvl(max(pno), 0)+1 from powder), '보충제', '컴뱃 100% 웨이 67서빙', 67174, '바닐라', 1, 
'맛과 기본에 충실한 프로틴
컴뱃 100% 웨이 5파운드 (2.27kg, 67서빙)', 
'./img/combat.jpg', sysdate);
insert into powder values ((select nvl(max(pno), 0)+1 from powder), '보충제', '골드 스탠다드 100% 웨이 149서빙', 157795, '리얼초코', 1, 
'이 골드 스탠다드는 옵티멈 뉴트리션의 프로틴 라인업에서 최상의 레벨을 갖고 있는 프로틴입니다. 옵티멈 뉴트리션에서 개발해낸 100% 고품질 WPI를 다량으로 함유하고 있습니다.', 
'./img/whey.jpg', sysdate);
insert into powder values ((select nvl(max(pno), 0)+1 from powder), '보충제', '매트릭스 73서빙', 65906, '바닐라', 1, 
'새로운 디자인! 새로운 매트릭스!
하지만 가성비는 그대로!
극강의 가성비 프로틴 매트릭스 73서빙!', 
'./img/matrix.jpg', sysdate);

--테이블 powder 검색
select * from powder;
select * from powder where pno;

--테이블 powder 수정
update powder set pgory=?, pname=?, pprice=?, ptaste=?, 
pamount=?, pcomment=?, pimage=?, pinday=sysdate where pno=?;
update powder set pimage='./img/xtend.jpg' where pno=1;
--테이블 powder 내용 삭제
drop table powder;


-- 장바구니
create table basket(bno number primary key, -- 장바구니번호
hid varchar2(20),    -- 사용자아이디
pno number,             -- 상품코드
ptaste varchar2(40),    -- 보충제 맛
pamount number,          -- 수량
bdate Date);            -- 장바구니 담긴 날짜

--장바구니 보기
select * from basket;
-- 장바구니 담기
insert into basket values ();

-- 장바구니 정보 변경
update basket set pno=?, ptaste=?, pamount=?, bdate=sysdate where bno=?;

-- 장바구니 삭제
delete from basket where bno=?;
--완전삭제
drop table basket;

CREATE TABLE db_access (
  no number primary key,
  request_uri varchar(100),
  query_string varchar(200),
  remote_address varchar(30),
  server_name varchar(60),
  server_port varchar(10),
  locale varchar(20),
  browser varchar(200),
  referer varchar(255),
  session_id varchar(80),
  user_id varchar(20),
  response_time number,
  reg_date date default sysdate
);

select * from db_access;

create table payment(ono number primary key, -- 결제번호
    paytype varchar2(20),   -- 결제방식
    payno varchar2(30),     -- 결제카드번호
    money number,           -- 결제금액
    sdate date,             -- 결제일
    pno number,             -- 상품코드
    pamount number,          -- 수량
    hid varchar2(20),    -- 사용자아이디
	rname varchar2(30),     -- 수신자명
    tel varchar2(20),       -- 수신자전화번호
    addr1 varchar2(200),    -- 수신자 기본주소
    addr2 varchar2(100),    -- 수신자 상세주소
    postcode varchar2(10),  -- 수신자 우편번호
    transno varchar2(50),   -- 배송코드
    transco varchar2(50),   -- 배송회사
    rstatus varchar2(20),   -- 수신상태
    rdate date,             -- 도착일
	memo varchar2(100)     -- 메모
);

select * from payment;

drop table payment;
commit;