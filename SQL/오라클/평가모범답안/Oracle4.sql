-- 직원 테이블에서 근무지가 서울이거나 일산이거나 제주인 직원의 직원코드, 이름, 입사일을 조회
select u_id, name, joinday from employees where workplace='서울' or workplace='일산' or workplace='제주';
select u_id, name, joinday from employees where workplace in ('서울','일산','제주');

-- 직원 테이블에서 급여가 3500000~3800000인 직원의 모든 항목을 조회
select * from employees where u_id in (select emp_no from salaries where salary >= 3500000 and salary<=3800000);
select * from employees where u_id in (select emp_no from salaries where salary between 3500000 and 3800000);