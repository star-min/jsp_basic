use mysql;
create user test3;	-- 사용자 추가
select host, user from user;  -- 사용자 목록 보기
create user test3@localhost identified by '1234'; -- localhost에 대한 암호 설정
create user test3@'%' identified by '1234'; -- 외부 접근시 암호 설정
-- drop user 사용자아이디;   사용자제거
-- 권한 수행(권한 부여 - grant, 권한 회수 - revoke)
-- 1) 권한 부여
-- grant sql명령 on 데이터베이스.테이블명 to 계정아이디@lacalhost [IDENTIFIED BY '비밀번호'];  
-- 2) 모든 데이터베이스와 테이블의 모든 권한 부여
-- grant all privileges on *.* to 계정@localhost [identified by '비밀번호' with grant option];
-- 3) 권한에 대한 변경사항을 적용
-- flush privileges;
-- 4) 사용자 권한 보기
-- show grants for 계정@localhost;
-- 5) 권한 회수
-- revoke sql명령 privileges on 데이터베이스.테이블명 from 계정아이디@lacalhost;  
-- 6) 모든 권한 회수
-- revoke all privileges on *.* to 계정@localhost;

-- 1) test4/a1234 의 사용자 계정을 추가
-- 2) test4 사용자에게 모든 데이터베이스의 모든 권한을 부여
-- 3) test4의 권한 내용을 갱신
-- 4) 터미널에서 test4로 mysql 접속 후 academy 데이터베이스에 접근하여 테이블 목록을 보고,
-- 원하는 테이블의 데이터를 검색해보고 접속 종료함
-- 5) test4 사용자에게 모든 데이터베이스의 모든 권한을 회수
-- 6) test4의 사용자를 제거



