-- test1/a1234 사용자를 추가하시오.
create user test1 identified by a1234;

-- test2/a1234 사용자를 추가하시오.
create user test2 identified by a1234;

-- 추가된 test1 사용자의 비밀번호를 1234로 변경하시오.
alter user test1 identified by 1234;
		
-- 추가된 test1 계정에 모든 테이블의 모든 권한을 부여하시오.
grant connect, resource, dba to test1;

-- 추가된 test2 계정에 모든 테이블의 모든 권한을 부여하시오.
grant connect, resource, dba to test2;

-- 추가된 test2 계정에 모든 테이블의 모든 권한을 회수하시오.
revoke connect, resource, dba from test2;

-- 추가된 test2 계정을 삭제하시오.
drop user test2;

commit;

-- 사용자 추가나 권한 명령 수행 후에 반드시 해야함(MySQL/MaxDB/MariaSQL 등)
-- FLUSH PRIVILEGES;
