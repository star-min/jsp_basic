
create table customer(cid varchar2(12) primary key,     -- 고객아이디
    upw varchar2(100) not null,      -- 고객비밀번호
    uname varchar2(20) not null,    -- 고객명
    tel varchar2(13) not null,      -- 전화번호
    email varchar2(50) not null,    -- 이메일
    birth date,                     -- 생년월일
    regdate date default SYSDATE,   -- 가입일
    visited number(10),             -- 로그인(방문횟수)
    upoint number(10) default 1000, -- 고객포인트(5회 방문시 마다 10포인트씩 증가, 이용후기 작성시 마다 100포인트씩 증가)
    urank number(2) default 9       
);  -- 고객등급(1:최고관리자, 2:일반관리자, 3:VIP회원, 4:우수회원, 9:일반회원)
desc customer;
-- alter table customer modify urank number(2) default 9;
-- 고객(customer) 테이블 더미 데이터 추가
insert into customer(cid, upw, uname, tel, email, birth, urank) values ('admin','1234','관리자','010-2848-1234','admin@yeosu.go.kr','2022-05-10',1);
insert into customer(cid, upw, uname, tel, email, birth, urank) values ('kkt','1234','김기태','010-3348-4321','kkt@naver.com','1979-12-25',2);
insert into customer(cid, upw, uname, tel, email, birth, urank) values ('kye','4321','강예은','010-6353-3014','kye@gmail.com','1998-07-14',3);
insert into customer(cid, upw, uname, tel, email, birth, urank) values ('jsm','1111','장수민','010-7329-1993','jsm@hanmail.net','1983-02-14',4);
insert into customer(cid, upw, uname, tel, email, birth) values ('lgh','3333','이규환','010-9407-9611','lgh1004@hotmail.com','1987-10-03');
insert into customer(cid, upw, uname, tel, email, birth) values ('ksm','2222','권성민','010-3740-2896','ksmkim@empal.com','1991-08-14');
insert into customer(cid, upw, uname, tel, email, birth) values ('sgh','4444','심길호','010-5576-3289','shintan@naver.com','1988-05-04');
insert into customer(cid, upw, uname, tel, email, birth) values ('lkj','7777','임규진','010-8200-5633','kyujin79@gmail.com','1985-06-27');

-- 고객(customer) 테이블 더미 데이터 수정
update customer set upw=?, tel=?, email=?, birth=?, urank=? where cid=?;
update customer set visited=1;
update customer set upw='75992a5ac67ff644d3063976c2effd10bdd93fcc109798e3d5c1acf2e530d01a' where cid='limsohee';
update customer set upw='03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4' where cid='kimsohi1004';
update customer set upw='03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4' where cid='admin';
update customer set upw='fe2592b42a727e977f055947385b709cc82b16b9a87f88c6abf3900d65d0cdc3' where cid='kye'; 
update customer set upw='318aee3fed8c9d040d35a7fc1fa776fb31303833aa2de885354ddf3d44d8fb69' where cid='lgh'; 
update customer set upw='edee29f882543b956620b26d0ee0e7e950399b1c4222f5de05e06425b4c995e9' where cid='ksm';
update customer set upw='79f06f8fde333461739f220090a23cb2a79f6d714bee100d0e4b4af249294619' where cid='sgh';
update customer set upw='41c991eb6a66242c0454191244278183ce58cf4a6bcd372f799e4b9cc01886af' where cid='lkj';


-- 고객(customer) 테이블 더미 데이터 삭제
delete from customer where cid=?;

-- 고객(customer) 테이블 더미 데이터 조회
select * from customer where cid=?;
select * from customer;





-- 관광(tourlist) 테이블 생성
create table tourlist(
    ppno number(11) not null, 
    pid varchar2(10) primary key,                       -- 장소아이디
    pname varchar2(40) not null,                        -- 장소명
    ptype varchar2(20) not null,                        -- 장소구분
    pcoment varchar2(600) not null,                     -- 장소설명
    pimg1 varchar2(50),                                 -- 장소이미지 경로
    pimg2 varchar2(50),                                 -- 장소이미지2 경로
    pimg3 varchar2(50),                                 -- 장소썸네일1 경로
    pimg4 varchar2(50)                                 -- 장소이미지3 경로
);
-- 관광 인덱스(시퀀스) 추가

create sequence scott.tour_seq increment by 1 start with 1 minvalue 1 maxvalue 100000 nocycle nocache;
-- pid 첫 번째 문자 설명 : A:관광명소, B:문화축제, C:숙박, D:음식, E:쇼핑, F:체험, G:교통편
-- pid 두 번째 구분코드 설명 A - 11:섬, 12:해변, 13:산, 14:사찰, 15:박물관/박람회, 16:교량및시설, 17:문화재및유적, 18:유명길또는전망대, 19:기타
-- pid 두 번째 구분코드 설명 B - 11:문화예술행사, 12:축제, 13:체험행사, 14:일출제, 15:음식문화제, 16:지역별축제, 17:기타문화축제
-- pid 두 번째 구분코드 설명 C - 11:호텔, 12:모텔, 13:콘도, 14:펜션, 15:민박, 16:게스트하우스, 17:캠핑숙소, 18:찜질방, 19:기타숙소
-- pid 두 번째 구분코드 설명 D - 11:한식, 12:횟집, 13:중식, 14:양식, 15:일식, 16:분식, 17:뷔페, 18:동남아식, 19:기타식당
-- pid 두 번째 구분코드 설명 E - 11:전통시장, 12:수산시장, 13:특산물판매장, 14:공예/공방, 15:주문제작, 16:5일장, 17:직거래소, 18:라이브쇼핑, 19:기타쇼핑
-- pid 두 번째 구분코드 설명 F - 11:관람시설, 12:체험시설, 13:레저시설, 14:캠핑시설, 15:농어촌체험, 16:이색체험, 17:템플스테이, 18:요트투어, 19:VR체험
-- pid 두 번째 구분코드 설명 G - 11:투어버스, 12:시외버스, 13:시내버스, 14:마을버스, 15:택시, 16:관광전세버스, 17:렌트카, 18:바이크, 19:전용관람차
--                          - 21:철도-호남선, 22:철도-목포선, 23:철도-남해선, 24:철도-KTX
--                          - 31:여객선, 32:유람선, 33:요트, 34:크루즈, 35:낚시배대여, 36:무인도방문및계약선박
--                          - 41:김포공항, 42:제주공항, 43:양양공항, 44:청주공항, 45:해외공항, 46:국내기타
-- pid 두 번째 구분코드 설명 H - 11:코스여행

select count(*) as res from tourlist;

-- 관광(tourlist) 테이블 더미 데이터 추가
insert into tourlist(ppno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'A110001', '오동도', 'place', '여수의 중심가에서 약 10분쯤의 거리에 위치해 있으며, 오동도 입구 주차장에서 약 15분 정도, 방파제 길을 따라 걸으면 도착한다. 이 길은 한국의 아름다운 길 100선에 선정된 바 있을 만큼 운치가 있으며, 오동도가 한눈에 내려다보이는 언덕에는 자산공원이 조성되어 있어 향일암과 더불어 한려수도 서쪽 관광루트의 시작점이 되고 있다.',
'./img/odong_bg.jpg', './img/odong1.jpg','./img/odong2.jpg');
insert into tourlist(ppno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'B110002', '여수거북선축제', 'festival', '호국문화의 선양, 향토의식의 앙양, 향토예술의 계발이라는 3대목적을 갖고, 우리고장의 진남정신을 계승하고 있는 제53회 여수거북선축제에 여러분을 초대합니다. 진남정신은 임란을 승리로 이끌었던 호국정신, 거북선을 창제했던 창조정신',
'./img/geobukseon0.jpg', './img/geobukseon2.jpg','./img/geobukseon3.jpg');
insert into tourlist(ppno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'C110003', '소노캄 여수호텔', 'hotel', '세계 4대 미항 여수의 오동도와 2012여수세계박람회장에 위치한 소노캄 여수는 고객님의 가장 가치 있는 삶이 머무는 공간입니다.
머물수록 가치가 있는 품격 있는 서비스와 남해바다를 향해 항해하는 멋스런 인테리어, 쾌적한 환경과 첨단 설비의 컨벤션 센터를 제공하여 특별한 분들과의 특별한 만남을 기다리고 있습니다.', 
'./img/sonocam0.jpg', './img/sonocam2.jpg','./img/sonocam3.jpg');
insert into tourlist(ppno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'D110004', '어부사시사', 'food', '여수 맛집 추천 1위 어부사시사 상다리가 부러져요~! 다양한 해산물과 푸짐한 상차림~! 여서동 7길 15-2에 있으며, 매일 오전 11시 30분 부터 오후 10시 까지 영업합니다. 문의는 061-652-0003으로 해주시면 감사하겠으며, 방문하시는 모든 분들에게 최상의 서비스와 요리로 보답하겠습니다.', 
'./img/ubsasia0.jpg', './img/ubsasia2.jpg','./img/ubsasia3.jpg');
insert into tourlist(ppno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'E110005', '여수서시장', 'market', '서시장은 수산물과 의류가 주요 취급 품목인 전통시장으로, 여수연안여객선터미널과 여수수산업협동조합 공판장 등과 가까운 거리에 있어 싱싱하고 다양한 수산물들이 거래되고 있다. 서시장 안에 있는 풍물거리는 싱싱한 생선과 생선회를 찾는 외지의 관광객들이 많이 찾고 있으며, 먹거리 골목의 푸짐한 인심도 기대할 수 있다. 이러한 서시장은 오전 6시에 영업을 시작하여 오후 8시에 마감한다.', 
'./img/seomarket0.jpg', './img/seomarket2.jpg','./img/seomarket3.jpg');
insert into tourlist(ppno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'F110006', '아쿠아플라넷여수', 'experience', '세계적인 해양생물을 만날 수 있는 해양생태관! 벨루가(흰고래), 바이칼물범 등 380여종의 다양한 해양 생물들이 펼치는 이벤트가 가득한 곳, 아쿠아리움이다.', 
'./img/aquaplanet0.jpg', './img/aquaplanet2.jpg','./img/aquaplanet3.jpg');

-- 관광(tourlist) 테이블 더미 데이터 변경
update tourlist set pname=?, ptype=?, pcoment=?, pimg1=?, pimg2=?, pimg3=?, pimg4=? where pid=?;

-- 관광(tourlist) 테이블 더미 데이터 삭제
delete from tourlist where pid=?;

-- 관광(tourlist) 테이블 더미 데이터 검색
select * from tourlist where pid=?;

-- 이용후기(impression) 테이블 생성
create table impression(
    ino number primary key,     -- 이용후기번호
    ititle varchar2(50) not null,                       -- 이용후기 제목
    iplace varchar2(50) not null,                       -- 이용후기 장소명
    itodate date not null,                              -- 이용시작일
    ifromdate date not null,                            -- 이용종료일
    icontent varchar2(500) not null,                    -- 이용소감
    ipic1 varchar2(50),                                 -- 방문사진1
    ipic2 varchar2(50),                                 -- 방문사진2
    cid varchar2(12),                                   -- 작성자
    ipw varchar2(40),                                   -- 작성글비밀번호
    idate date default sysdate,                         -- 작성일
    viewcnt number                                  -- 본횟수
);
-- 이용후기(impression) 인덱스(시퀀스) 생성
create sequence scott.im_seq increment by 1 start with 1 minvalue 1 maxvalue 100000 nocycle nocache;

-- 이용후기(impression) 더미 데이터 추가
insert into impression values (im_seq.nextval, '생각정리 여수여행', '향일암코스', '2022-05-03', '2022-05-04', '여행도중 제주위지인들께 바로 여수여행을 강추하는 메시지를 전송했었습니다.참으로 마음 따뜻한여행이였습니다',
'./impression/impression1.jpg','','kye','1234','',1);
insert into impression values (im_seq.nextval, '여수여행~~♡', '벽화마을', '2022-03-16', '2022-03-18', '홀로 여수 여행을 처음 하였습니다 여수랑 자전거를 이용하여 시내에서 아주 편리하게 이용 하였어요 둘째날은 금오도 비렁길을 갔었는데 최고였어요 배 타고 나와 교통노약자 택시를 운영하는 택시 기사님의 도움을 받았는데 명함도 못 받고 너무 아쉽네요 감사 인사를 따로 드리고 싶을정도였어요 그 기억이 너무 좋아 여수에 또 가고 싶습니다.',
'./impression/impression2.jpg','','jsm','1234','',1);
update impression set idate='2022-05-11';

-- 이용후기(impression) 더미 데이터 변경
update impression set ititle=?, iplace=?, itodate=?, ifromdate=?, icontent=?, ipic1=?, idate=sysdate, veiwcnt=viewcnt+1 where ino=?;

-- 이용후기(impression) 더미 데이터 삭제
delete from impression where ino=?;

-- 이용후기(impression) 더미 데이터 조회
select * from impression where ino=?;


-- 공지사항(notice) 테이블 생성
create table notice(nno number(11) primary key,     -- 글번호
    ntitle varchar2(50) not null,                   -- 글제목
    nconetnt varchar2(500) not null,                -- 글내용
    npic varchar2(50),                              -- 글관련이미지
    ndata varchar2(50),                             -- 글관련자료
    resdate date default sysdate,                   -- 작성일
    nname varchar2(20),                             -- 작성자 
    viewcnt number(11)                              -- 읽은 횟수
);
-- 공지사항(notice) 인덱스(시퀀스) 생성
create sequence scott.noti_seq increment by 1 start with 1 minvalue 1 maxvalue 100000 nocycle nocache;
-- 공지사항(notice) 더미데이터 추가
insert into notice values(noti_seq.nextval, '여수앞바다 2022년 5월의 물때표 공지', '2022년 5월 12일은 음력 4월 초하루가 되어, 조석현상으로 만조 때 해수면이 크게 높아지 는 일이 12일부터 26일까지 호우가 오거나 파도가 높으면 피해가 더 커집니다.',
'./notice/watertime20220512.jpg','./notice/water202205121.xlsx',sysdate,'admin',1);


-- 공지사항(notice) 더미데이터 변경
update notice set ntitle=?, ncontent=?, npic=?, ndata=?, resdate=sysdate, nname=? where nno=?;
update notice set resdate=sysdate;

-- 공지사항(notice) 더미데이터 삭제
delete from notice where nno=?;

-- 공지사항(notice) 더미데이터 조회
select * from notice where nno=?;

create table place(pcode number primary key,
	ptype varchar2(1) not null,
	ptypename varchar2(50) not null,
	prop varchar2(2) not null,
	propname varchar2(50) not null
);

-- pid 첫 번째 문자 설명 : A:관광명소, B:문화축제, C:숙박, D:음식, E:쇼핑, F:체험, G:교통편
-- pid 두 번째 구분코드 설명 A - 11:섬, 12:해변, 13:산, 14:사찰, 15:박물관/박람회, 16:교량및시설, 17:문화재및유적, 18:유명길또는전망대, 19:기타
-- pid 두 번째 구분코드 설명 B - 11:문화예술행사, 12:축제, 13:체험행사, 14:일출제, 15:음식문화제, 16:지역별축제, 17:기타문화축제
-- pid 두 번째 구분코드 설명 C - 11:호텔, 12:모텔, 13:콘도, 14:펜션, 15:민박, 16:게스트하우스, 17:캠핑숙소, 18:찜질방, 19:기타숙소
-- pid 두 번째 구분코드 설명 D - 11:한식, 12:횟집, 13:중식, 14:양식, 15:일식, 16:분식, 17:뷔페, 18:동남아식, 19:기타식당
-- pid 두 번째 구분코드 설명 E - 11:전통시장, 12:수산시장, 13:특산물판매장, 14:공예/공방, 15:주문제작, 16:5일장, 17:직거래소, 18:라이브쇼핑, 19:기타쇼핑
-- pid 두 번째 구분코드 설명 F - 11:관람시설, 12:체험시설, 13:레저시설, 14:캠핑시설, 15:농어촌체험, 16:이색체험, 17:템플스테이, 18:요트투어, 19:VR체험
-- pid 두 번째 구분코드 설명 G - 11:투어버스, 12:시외버스, 13:시내버스, 14:마을버스, 15:택시, 16:관광전세버스, 17:렌트카, 18:바이크, 19:전용관람차
--                          - 21:철도-호남선, 22:철도-목포선, 23:철도-남해선, 24:철도-KTX
--                          - 31:여객선, 32:유람선, 33:요트, 34:크루즈, 35:낚시배대여, 36:무인도방문및계약선박
--                          - 41:김포공항, 42:제주공항, 43:양양공항, 44:청주공항, 45:해외공항, 46:국내기타
-- pid 두 번째 구분코드 설명 H - 11:코스여행

create table place(pcode number primary key,
	ptype varchar2(1) not null,
	ptypename varchar2(50) not null,
	prop varchar2(2) not null,
	propname varchar2(50) not null
);
create sequence scott.place_seq increment by 1 start with 1 minvalue 1 maxvalue 100000 nocycle nocache;
-- pid 첫 번째 문자 설명 : A:관광명소, B:문화축제, C:숙박, D:음식, E:쇼핑, F:체험, G:교통편
-- pid 두 번째 구분코드 설명 A - 11:섬, 12:해변, 13:산, 14:사찰, 15:박물관/박람회, 16:교량및시설, 17:문화재및유적, 18:유명길또는전망대, 19:기타
insert into place values(place_seq.nextval, 'A', '관광명소', '11', '섬');
insert into place values(place_seq.nextval, 'A', '관광명소', '12', '해변');
insert into place values(place_seq.nextval, 'A', '관광명소', '13', '산');
insert into place values(place_seq.nextval, 'A', '관광명소', '14', '사찰');
insert into place values(place_seq.nextval, 'A', '관광명소', '15', '박물관 및 박람회');
insert into place values(place_seq.nextval, 'A', '관광명소', '16', '교량 및 시설');
insert into place values(place_seq.nextval, 'A', '관광명소', '17', '문화재 및 유적');
insert into place values(place_seq.nextval, 'A', '관광명소', '18', '유명길 또는 전망대');
insert into place values(place_seq.nextval, 'A', '관광명소', '19', '기타');

-- pid 두 번째 구분코드 설명 B - 11:문화예술행사, 12:축제, 13:체험행사, 14:일출제, 15:음식문화제, 16:지역별축제, 17:기타문화축제
insert into place values(place_seq.nextval, 'B', '문화축제', '11', '문화예술행사');
insert into place values(place_seq.nextval, 'B', '문화축제', '12', '축제');
insert into place values(place_seq.nextval, 'B', '문화축제', '13', '체험행사');
insert into place values(place_seq.nextval, 'B', '문화축제', '14', '일출제');
insert into place values(place_seq.nextval, 'B', '문화축제', '15', '음식문화제');
insert into place values(place_seq.nextval, 'B', '문화축제', '16', '지역별축제');
insert into place values(place_seq.nextval, 'B', '문화축제', '17', '기타문화축제');

-- pid 두 번째 구분코드 설명 C - 11:호텔, 12:모텔, 13:콘도, 14:펜션, 15:민박, 16:게스트하우스, 17:캠핑숙소, 18:찜질방, 19:기타숙소
insert into place values(place_seq.nextval, 'C', '숙박', '11', '호텔');
insert into place values(place_seq.nextval, 'C', '숙박', '12', '모텔');
insert into place values(place_seq.nextval, 'C', '숙박', '13', '콘도');
insert into place values(place_seq.nextval, 'C', '숙박', '14', '펜션');
insert into place values(place_seq.nextval, 'C', '숙박', '15', '민박');
insert into place values(place_seq.nextval, 'C', '숙박', '16', '게스트하우스');
insert into place values(place_seq.nextval, 'C', '숙박', '17', '캠핑숙소');
insert into place values(place_seq.nextval, 'C', '숙박', '18', '찜질방');
insert into place values(place_seq.nextval, 'C', '숙박', '19', '기타숙소');

-- pid 두 번째 구분코드 설명 D - 11:한식, 12:횟집, 13:중식, 14:양식, 15:일식, 16:분식, 17:뷔페, 18:동남아식, 19:기타식당
insert into place values(place_seq.nextval, 'D', '음식', '11', '한식');
insert into place values(place_seq.nextval, 'D', '음식', '12', '횟집');
insert into place values(place_seq.nextval, 'D', '음식', '13', '중식');
insert into place values(place_seq.nextval, 'D', '음식', '14', '양식');
insert into place values(place_seq.nextval, 'D', '음식', '15', '일식');
insert into place values(place_seq.nextval, 'D', '음식', '16', '분식');
insert into place values(place_seq.nextval, 'D', '음식', '17', '뷔페');
insert into place values(place_seq.nextval, 'D', '음식', '18', '동남아식');
insert into place values(place_seq.nextval, 'D', '음식', '19', '기타식당');

-- pid 두 번째 구분코드 설명 E - 11:전통시장, 12:수산시장, 13:특산물판매장, 14:공예/공방, 15:주문제작, 16:5일장, 17:직거래소, 18:라이브쇼핑, 19:기타쇼핑
insert into place values(place_seq.nextval, 'E', '쇼핑', '11', '전통시장');
insert into place values(place_seq.nextval, 'E', '쇼핑', '12', '수산시장');
insert into place values(place_seq.nextval, 'E', '쇼핑', '13', '특산물시장');
insert into place values(place_seq.nextval, 'E', '쇼핑', '14', '공예/공방');
insert into place values(place_seq.nextval, 'E', '쇼핑', '15', '주문제작');
insert into place values(place_seq.nextval, 'E', '쇼핑', '16', '5일장');
insert into place values(place_seq.nextval, 'E', '쇼핑', '17', '직거래소');
insert into place values(place_seq.nextval, 'E', '쇼핑', '18', '라이브쇼핑');
insert into place values(place_seq.nextval, 'E', '쇼핑', '19', '기타쇼핑');

-- pid 두 번째 구분코드 설명 F - 11:관람시설, 12:체험시설, 13:레저시설, 14:캠핑시설, 15:농어촌체험, 16:이색체험, 17:템플스테이, 18:요트투어, 19:VR체험
insert into place values(place_seq.nextval, 'F', '체험', '11', '관람시설');
insert into place values(place_seq.nextval, 'F', '체험', '12', '체험시설');
insert into place values(place_seq.nextval, 'F', '체험', '13', '레저시설');
insert into place values(place_seq.nextval, 'F', '체험', '14', '캠핑시설');
insert into place values(place_seq.nextval, 'F', '체험', '15', '농어촌체험');
insert into place values(place_seq.nextval, 'F', '체험', '16', '이색체험');
insert into place values(place_seq.nextval, 'F', '체험', '17', '템플스테이');
insert into place values(place_seq.nextval, 'F', '체험', '18', '요트투어');
insert into place values(place_seq.nextval, 'F', '체험', '19', 'VR체험');

-- pid 두 번째 구분코드 설명 G - 11:투어버스, 12:시외버스, 13:시내버스, 14:마을버스, 15:택시, 16:관광전세버스, 17:렌트카, 18:바이크, 19:전용관람차
--                          - 21:철도-호남선, 22:철도-목포선, 23:철도-남해선, 24:철도-KTX
--                          - 31:여객선, 32:유람선, 33:요트, 34:크루즈, 35:낚시배대여, 36:무인도방문및계약선박
--                          - 41:김포공항, 42:제주공항, 43:양양공항, 44:청주공항, 45:해외공항, 46:국내기타
insert into place values(place_seq.nextval, 'G', '교통', '11', '투어버스');
insert into place values(place_seq.nextval, 'G', '교통', '12', '시외버스');
insert into place values(place_seq.nextval, 'G', '교통', '13', '시내버스');
insert into place values(place_seq.nextval, 'G', '교통', '14', '마을버스');
insert into place values(place_seq.nextval, 'G', '교통', '15', '택시');
insert into place values(place_seq.nextval, 'G', '교통', '16', '관광전세버스');
insert into place values(place_seq.nextval, 'G', '교통', '17', '렌트카');
insert into place values(place_seq.nextval, 'G', '교통', '18', '바이크');
insert into place values(place_seq.nextval, 'G', '교통', '19', '전용관람차');

insert into place values(place_seq.nextval, 'G', '교통', '21', '호남고속철도');
insert into place values(place_seq.nextval, 'G', '교통', '22', '목포선철도');
insert into place values(place_seq.nextval, 'G', '교통', '23', '남해선철도');
insert into place values(place_seq.nextval, 'G', '교통', '24', '신설KTX');

insert into place values(place_seq.nextval, 'G', '교통', '31', '여객선');
insert into place values(place_seq.nextval, 'G', '교통', '32', '유람선');
insert into place values(place_seq.nextval, 'G', '교통', '33', '크루즈');
insert into place values(place_seq.nextval, 'G', '교통', '34', '낚시배대여');
insert into place values(place_seq.nextval, 'G', '교통', '35', '무인도방문 및 계약선박');

insert into place values(place_seq.nextval, 'G', '교통', '41', '김포공항');
insert into place values(place_seq.nextval, 'G', '교통', '42', '제주공항');
insert into place values(place_seq.nextval, 'G', '교통', '43', '양양공항');
insert into place values(place_seq.nextval, 'G', '교통', '44', '청주공항');
insert into place values(place_seq.nextval, 'G', '교통', '45', '해외공항');
insert into place values(place_seq.nextval, 'G', '교통', '46', '기타국내공항');


select * from place;

commit;
-- 파일 첨부 연습 테이블
create table filelist(fno number primary key,
fname varchar2(100),
subject varchar2(100),
filename1 varchar2(200),
filename2 varchar2(200));

create sequence scott.file_seq increment by 1 start with 1 minvalue 1 maxvalue 100000 nocycle nocache;
