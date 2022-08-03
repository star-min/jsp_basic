select * from employees;
select * from salaries;
-- 내부 조인을 활용하여 직원 테이블과 급여 테이블에 있는 직원의 직원코드, 이름, 급여를 조회하도록 하시오.
select e.u_id, e.name, s.salary from employees e inner join salaries s on e.u_id = s.emp_no; 

-- 서브 쿼리를 활용하여 급여 테이블을 참고하여 직원 테이블에서 급여가 3600000 이상인 직원의 이름, 근무지를 조회하시오.
select name, workplace from employees where u_id in (select emp_no from salaries where salary >= 3600000);