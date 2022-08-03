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