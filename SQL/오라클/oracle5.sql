-- 직원 테이블의 no 컬럼을 시퀀스로 추가되어 자동 증가될 수 있도록 하되, 시퀀스의 이름을 emp_seq로 한 후 시퀀스가 추가된 내용을 바탕으로 추가된 결과를 조회하시오.
create sequence em_seq start with 1 increment by 1 maxvalue 100000 minvalue 1 nocycle nocache;
-- employees 테이블에 no 컬럼 추가
alter table employees add no number(11);
desc employees;
-- 미리 employees에 추가된 데이터가 있으므로 그 것 부터 시퀀스를 적용해주어야 함.
update employees set no=em_seq.NEXTVAL;
-- 현재 내용을 증가시킨 것이 없으면 오류가 나는 것 주의
SELECT em_seq.CURRVAL FROM DUAL;
select no, u_id, name from employees;
select * from employees;
insert into employees(no,u_id,name,password,position,workplace,address,birth,regday) values 
(em_seq.NEXTVAL, 'E1014', '이민환', '1234', 'Z', '강남', '주교동 38', '94-04-27','22-04-27');

-- 급여 테이블을 복제하여 상여금(sal_bonus) 테이블을 생성하시오
create table sal_bonus as select * from salaries;
select * from sal_bonus;

-- 상여금 테이블의 모든 급여는 원래 금액의 30%로 계산하여 변경하시오.
update sal_bonus set salary=salary*0.3;

-- 급여 테이블과 상여금 테이블의 합집합 기능을 이용하여 두 테이블의 급여(salary) 컬럼을 합산하여 총급여(money) 뷰로 생성하고, 그 결과를 조회하시오.
CREATE VIEW money as SELECT * FROM salaries UNION SELECT * FROM sal_bonus;
select u_id as 사원번호, sum(salary) as 총급여 from money group by u_id;

-- 급여 테이블과 직원 테이블에 모두 존재하는 사원번호를 교집합하여 all_emp 뷰로 생성하라.
CREATE VIEW all_emp as select u_id from employees INTERSECT select u_id from salaries;
select * from all_emp;

-- 직원 테이블에는 존재하나 급여 테이블에는 없는 사원번호를 추출하여 minusa 뷰를 생성하라.
CREATE VIEW minusa as select u_id from employees MINUS select u_id from salaries;
select * from minusa;

-- 급여 테이블에는 존재하나 직원 테이블에는 없는 사원번호를 추출하여 minusb 뷰를 생성하라.
CREATE VIEW minusb as select u_id from salaries MINUS select u_id from employees;
select * from minusb;
commit;

-- 변경하거나 만든 요소 제거
drop view minusb;
drop view minusa;
drop view all_emp;
drop view money;
drop table money2;
drop table sal_bonus;
drop sequence em_seq;
alter table employees drop column no;
delete from employees where u_id='E1014';
commit;