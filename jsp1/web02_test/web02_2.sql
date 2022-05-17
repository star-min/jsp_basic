desc customer;
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

-- pid 두 번째 구분코드 설명 H - 11:코스여행
commit;