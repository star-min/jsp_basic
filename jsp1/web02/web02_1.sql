

create table member(
    mid varchar(15) primary key,        --고객아이디
    mpw varchar(40) not null,           --고객비밀번호
    mname varchar(20) not null,         --고객명
    tel varchar(15) not null,           --전화번호
    email varchar(200) not null,        --이메일
    birth date,                         --생년월일
    joinday date Default SYSDATE);      --가입일

select * from tour_seq;
-- 고객(member) 테이블 더미 데이터 추가
insert into member(mid, mpw, mname, tel, email, birth) values
('admin','1234','관리자','010-1234-4321','admin@master.com','2022-05-10');
insert into member(mid, mpw, mname, tel, email, birth) values
('zxzx001','4321','김성민','010-1004-1004','zxzx001@naver.com','1995-05-22');
insert into member(mid, mpw, mname, tel, email, birth) values
('eggman','1414','혁거세','010-4321-4321','eggmong@oisie.com','1794-11-20');
insert into member(mid, mpw, mname, tel, email, birth) values
('bangi','2323','반기문','010-4321-1231','bans@gmail.com','1960-03-21');
insert into member(mid, mpw, mname, tel, email, birth) values
('dong123','2222','장동근','010-4222-4331','dongs@naver.com','1975-03-16');
insert into member(mid, mpw, mname, tel, email, birth) values
('emile','3211','에밀리킴','010-2244-4111','emile@naver.com','1794-11-20');
insert into member(mid, mpw, mname, tel, email, birth) values
('adminn','1234','admin','010-2244-4111','emile@naver.com','1794-11-20');
-- 고객(customer) 테이블 더미 데이터 수정
ALTER TABLE member MODIFY(mpw VARCHAR2(100));
update member set mpw=?, tel=?, email=?, birth=? where mid=?;
update member set mpw='03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4' where mid='admin';
update member set mpw='fe2592b42a727e977f055947385b709cc82b16b9a87f88c6abf3900d65d0cdc3' where mid='zxzx001';
update member set mpw='afbfb89027a4dae87c6033eaa07896e93f3f1ddc2214ca43658982e8aa74b4d4' where mid='eggman';
update member set mpw='61503690505f84b144e6ac89124540a3eb8d22e77db76500984cfc50a1d8776e' where mid='bangi';
update member set mpw='edee29f882543b956620b26d0ee0e7e950399b1c4222f5de05e06425b4c995e9' where mid='dong123';
update member set mpw='4a8ed6268c1741e4d3b85f8e40aeddc34d35a965671eaa5207abd4cdef049d6f' where mid='emile';
update member set mpw='96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e' where mid='qwe123123';
-- update member set 컬럼=값;
commit;
-- 고객(member) 테이블 더미 데이터 삭제
delete from member where mid=?;

-- 고객(member) 테이블 더미 데이터 조회
select * from member where mid=?;
select * from member;

drop table member;
--권한주기
grant connect, resource, dba to scott;


-- 관광(tourlist) 테이블 생성
create table tourlist(
    pno number(11) not null,
    pid varchar2(10) primary key,               --장소아이디
    pname varchar2(40) not null,                --장소명
    ptype varchar2(20) not null,                --장소구분
    pcoment varchar2(600) not null,             --장소설명
    pimg1 varchar2(50),                         --장소이미지 경로
    pimg2 varchar2(50),                         --장소이미지2 경로
    pimg3 varchar2(50),                         --장소썸네일1 경로
    pimg4 varchar2(50));                        --장소이미지3 경로

-- 관광 인덱스(시퀀스) 추가
create sequence scott.tour_seq increment by 1 start with 1 MINVALUE 1 MAXVALUE 100000 NOCYCLE NOCACHE;
select * from user_sequences;

-- pid 첫 번째 문자 설명 : A:관광명소, B:문화축제, C:숙박, D:식당, E:쇼핑, F:체험, G:교통편
--pid 두 번째 구분코드 설명 A - 11:섬, 12:해변, 13:산, 14:사찰, 15:박물관/박람회, 16:교량및시설, 17:문화재및유적, 18:유명길또는전망대, 19:기타
--pid 두 번째 구분코드 설명 B - 11:문화예술행사, 12:축제, 13:체험행사, 14:일출제, 15:음식문화제, 16:지역별축제, 17:기타문화축제
--pid 두 번째 구분코드 설명 C - 11:호텔, 12:모텔, 13:콘도, 14:펜션, 15:민박, 16:게스트하우스, 17:캠핑숙소, 18:찜질방, 19:기타숙소
--pid 두 번째 구분코드 설명 D - 11:한식, 12:횟집, 13:중식, 14:양식, 15:일식, 16:분식, 17:뷔페, 18동남아식, 19기타식당
--pid 두 번째 구분코드 설명 E - 11:전통시장, 12:수산시작, 13:특산물판매장, 14:공예/공방, 15:주문제작, 16:5일장, 17:직거래소, 18:라이브쇼핑, 19:기타쇼핑
--pid 두 번째 구분코드 설명 F - 11:관람시설, 12:체험시설, 13:레저시설, 14:캠핑시설, 15:농어촌체험, 16:이색체험, 17:템플스테이, 18:요트투어, 19:VR체험
--pid 두 번째 구분코드 설명 G - 11:투어버스, 12:시외버스, 13:시내버스, 14:철도, 15:택시, 16:관광버스, 17:렌트카, 18:바이크, 19:전용관람차
--                          - 21:철도-호남선, 22:철도-목포선, 23:철도-남해선, 24:철도-KTX
--                          - 31:여객선, 32:유람선, 33:요트, 34:크루즈, 35:낚시배대여, 36:무인도방문및계약선박
--                          - 41:김포공항, 42:제주공항, 43:양양공항, 44:청주공항, 45:해외공항, 46:국내기타
-- pid 두 번째 구분코드 설명 H - 11:코스여행

-- 관광(tourlist) 테이블 더미 데이터 추가
insert into tourlist(pno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'A110001','주도','섬','속초해수욕장 앞에 위치한 무인도이다.',
    './img/judo01.jpg','./img/judo02.jpg','./img/judo03.jpg');
insert into tourlist(pno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'C170001','밤하늘글램핑','캠핑장','낮에는 즐길거리 가득한 속초여행을, 밤에는 속초밤하늘 글램핑에서 편안하고 감성가득한 추억을.',
    './img/bam01.jpg','./img/bam02.jpg','./img/bam03.jpg');
insert into tourlist(pno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'A120001','속초해변','해변','속초시민과 관광객들의 발길이 항상 끊이질 않는 곳 으로 공원과 꽃길, 송림 산책로가 조성되어 있어 해수욕과 함께 즐기기에 더욱 좋다.',
    './img/sokbeach01.jpg','./img/sokbeach02.jpg','./img/sokbeach03.jpg');
insert into tourlist(pno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'F160001','속초아이대관람차','이색체험','국내 유일 해변 대관람차 속초아이는 속초해수욕장 정문에 위치하며 높이 65M 캐빈 36개로 운행시간은 탑승후 15분이다.',
    './img/bigcar01.jpg','./img/bigcar02.jpg','./img/bigcar03.jpg');
insert into tourlist(pno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'A180001','바다향기로','길','시원한 외옹치 해안 절경이 산책로 바로 라애 펼쳐져 있고 시원한 파도소리와 함께 산책로 주변 해송에서 뿜어져 나오는 솔향기 등을 즐길 수 있는 명소이다.',
    './img/seasmell01.jpg','./img/seasmell02.jpg','./img/seasmell03.jpg');

select * from tourlist;
-- 관광(tourlist) 테이블 더미 데이터 변경
update tourlist set pname=?, ptype=?, pcoment=?, pimg1=?, pimg2=?, pimg3=?, pimg4=? where pid=?;

-- 관광(tourlist) 테이블 더미 데이터 삭제
delete from tourlist where pid=?;

-- 관광(tourlist) 테이블 더미 데이터 검색
select * from tourlist where pid=?;
select * from tourlist;
-- 이용후기(review) 테이블 생성
create table review(rno number(11) primary key,     --관광후기번호
    rtitle varchar2(50) not null,                   --관광후기 제목
    rplace varchar2(50) not null,                   --관광후기 장소명
    rtodate date not null,                          --관광 시작일
    rfromdate date not null,                        --관광 종료일
    icontent varchar2(500) not null,                --관광 소감
    ipic1 varchar2(50),                             --방문 사진1
    ipic2 varchar2(50),                             --방문 사진2
    rid varchar2(12),                               --작성자
    rpw varchar2(40),                               --작성글 비밀번호
    rdate date default sysdate,                     --작성일
    viewcnt number(11));                            --읽은횟수
    
-- 이용후기(review) 인덱스(시퀀스) 생성
create sequence scott.im_seq increment by 1 start with 1 minvalue 1 maxvalue 100000 nocycle nocache;

-- 이용후기(review) 더미 데이터 추가
insert into review values(im_seq.nextval,'만수무강하세요,,', '설악산 둘레길', '2022-05-08', '2022-05-10', '힘들고,,,,고단한,,,등산끝에는,,반드시,,아름다운 우리강산이 기다린다,,!',
    './img/san01.jpg','./img/san02.jpg','김갑수','1004','',1);
insert into review values(im_seq.nextval,'가족과 행복한 나들이~^^*', '속초해수욕장', '2022-05-05', '2022-05-10', '바다도 맑고 해수욕장도 넒어서 아이들이 너무너무 좋아헤요 강추!!',
    './img/idle01.jpg','./img/idle02.jpg','안혜숙','1234','',1);
insert into review values(im_seq.nextval,'이번 여행은 내가 다시태어난 날이다.', '대포항', '2022-05-01', '2022-05-03', '대포항의 야경에서 대자연의 위대한힘을 받아 슈퍼속초사이어인이 되버린것이다 회사도 날 막을수 없다.',
'./img/dapo01.jpg','./img/dapo02.jpg','김철수','7777','',1);
insert into review values(im_seq.nextval,'따듯한 온천과 멋진야경 까지', '한화리조트 워터파크', '2022-05-05', '2022-05-07', '아침에는 바다에 들어가 놀고 저녁에는 따뜻한 실내풀에서 친구들 그리고 가족들과 놀기좋습니다',
    './img/water01.jpg','./img/water02.jpg','박수빈','4321','',1);
select * from review;

-- 이용후기(review) 더미 데이터 변경
update review set rtitle=?, rplace=?, rtodate=?, rfromdate=?, icontent=?, ipic1=?, rdate=sysdate, veiwcnt=viewcnt+1 where rno=?;

-- 이용후기(impression) 더미 데이터 삭제
delete from review where ino=?;

-- 이용후기(impression) 더미 데이터 조회
select * from review where ino=?;

-- 공지사항(notice) 테이블 생성
create table nnotice(
	tno number(20) primary key,        					--글번호
    ntitle varchar2(50) not null,                       --글제목
    ncontent varchar2(500) not null,                    --글내용
    npic varchar2(50),                                  --글관련이미지
    resdate date default sysdate,                       --작성일
    nname varchar2(20),                                 --작성자
    viewcnt number(11));                                --읽은횟수

-- 공지사항(nnotice) 인덱스(시퀀스) 생성
create sequence scott.noti_seq increment by 1 start with 1 minvalue 1 maxvalue 100000 nocycle nocache;

-- 공지사항(nnotice) 더미데이터 추가
insert into nnotice values(noti_seq.nextval,'해변 애완동물 관련 안내',' 다른 관광객 및 주민 에게 피해를 줄수도있기에 모래사장에서는 애완동물의 출입을 허가하지 않습니다.',
'./img/nopet.jpg','','관리자',1);
insert into nnotice values(noti_seq.nextval,'숲박물관 -> 박물관노리숲길 로 변경',' 지난 9월부터 속초시민을 대상으로 실시한 명칭개정 공모전에 따라 박물관노리숲길 로 최종확정되었다.',
'./img/sup.jpg','','관리자',1);
insert into nnotice values(noti_seq.nextval,'청춘파티 in 청년몰 속초 갯배St',' 복고파티, 영화상영제, 비보잉 공연, 클럽파티, 버스킹 경연대회 등 풍성한 이벤트가 마련되어 있습니다.',
'./img/St.jpg','','관리자',1);
insert into nnotice values(noti_seq.nextval,'국군장병 할인 우대업소',' 기본 할인율은 10% 내외 입니다. *업소별로 추가할인과 우대사항이 상이할 수 있으니, 확인 후 이용바랍니다.',
'./img/amy.png','','관리자',1);
insert into nnotice values(noti_seq.nextval,'외국인 전용 관광택시 운영',' 요금.',
'./img/nopet.jpg','','관리자',1);

-- 공지사항(nnotice) 더미데이터 변경
update nnotice set ntitle=?, ncontent=?, npic=?, ndata=?, resdate=sysdate, nname=? where tno=?;
update nnotice set resdate=sysdate;

-- 공지사항(nnotice) 더미데이터 삭제
delete from nnotice where tno=?;

-- 공지사항(nnotice) 더미데이터 조회
select * from nnotice where tno=?;
select * from nnotice;
commit;