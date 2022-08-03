select * from employees;
-- employees 테이블을 insa1 테이블로 복제하시오.
create table insa1 as select * from employees;
select * from insa1;
-- insa1 테이블에 해당 데이터를 추가하고, insa1 테이블을 검색하시오.
-- B1015   임소희  ys1004  D   목포  일산동 578     98-10-08    22-04-27
insert into insa1(u_id,name,password,position,workplace,address,birth,regday) values('B1015','임소희','ys1004','D','목포','일산동 578','98-10-08','22-04-27');
-- 저장시점을 a로 하고, insa1 테이블의 u_id가 B1004인 직원의 position을 B로 변경하도록 하고, insa1 테이블을 검색하는 트랜잭션을 실행하시오.
savepoint a;
update insa1 set position='B' where u_id='B1004';
select * from insa1;
-- 저장시점 a로 rollback 하도록 하고, insa1 테이블을 검색하시오.
ROLLBACK TO a;
select * from insa1;
-- 트랜잭션으로 select만 가능하도록 설정하시오.
set TRANSACTION READ ONLY; -- select 명령만 가능
-- 트랜잭션으로 crud 명령이 모두 가능하도록 설정하시오.
set TRANSACTION READ WRITE;
-- 트랜잭션이 자동으로 커밋이 될 수 있도록 설정하고, 해당 옵션의 상태를 확인하시오.
SHOW AUTOCOMMIT;
set AUTOCOMMIT ON;
set AUTOCOMMIT OFF;
-- LOCK : 현재 트랜잭션이 여러 개 동시에 접속이 될 경우, 예를 들어 insa1 테이블을 dba도 접근하고, test1 사용자도 접근, test2 사용자도 접근하여
-- 동일 업무에 대하여 변경이나 추가, 삭제를 동시에 여러 명이 같은 데이터를 접근하여 통제할 경우 어떤 일이 맞는 일인지 혼동이 오게 됨
-- 그러므로 하나의 트랜잭션에 대하여 격리를 시켜 오로지 하나의 트랜잭션만 처리가 될 수 있게 다른 사용자나 트랜잭션이 이루어지지 않도록 잠그는 일
-- LOCK TABLE 테이블명 IN EXCLUSIVE MODE;  -- 테이블이 잠그게 되어 select만 가능해짐
-- LOCK TABLE 테이블명 IN NOWAIT MODE;  -- 테이블이 잠궜으나 소유자에게만 CRUD가 가능해짐
-- 트랜잭션의 속성 : ACID - A(Atomicity-원자성), C(Consistency-일관성), I(Isoration-독립성,격리성,고립성), D(Durability - 지속성)
-- 원자성, 일관성, 독립성, 지속성
-- 원자성이란 시스템에서 한 트랜잭션의 연산들이 모두 성공하거나, 반대로 전부 실패되는 성질을 말한다.
-- 일관성은 하나의 트랜잭션 이전과 이후, 데이터베이스의 상태는 이전과 같이 유효해야 한다.
-- 격리성은 모든 트랜잭션은 다른 트랜잭션으로부터 독립되어야 한다는 뜻이다.
-- 지속성은 하나의 트랜잭션이 성공적으로 수행되었다면, 해당 트랜잭션에 대한 로그가 남아야하는 성질을 말한다.