select * from employees;
-- employees 테이블을 insa1 테이블로 복제하시오.
create table insa1 as select * from employees;
select * from insa1;
-- insa1 테이블에 해당 데이터를 추가하고, insa1 테이블을 검색하시오.
-- B1015   임소희  ys1004  D   목포  일산동 578     98-10-08    22-04-27
insert into insa1(u_id,name,password,position,workplace,address,birthday,joinday) values('B1015','임소희','ys1004','D','목포','일산동 578','98-10-08','22-04-27');
-- 저장시점을 a로 하고, insa1 테이블의 u_id가 B1004인 직원의 position을 B로 변경하도록 하고, insa1 테이블을 검색하는 트랜잭션을 실행하시오.
savepoint a;
update insa1 set position='B' where u_id='B1004';
select * from insa1;
-- 저장시점 a로 rollback 하도록 하고, insa1 테이블을 검색하시오.
ROLLBACK TO a;
select * from insa1;