-- 급여 테이블을 복제하여 상여금(sal_bonus) 테이블을 생성하시오
create table sal_bonus as select * from salaries;
select * from sal_bonus;

-- 상여금 테이블의 모든 급여는 원래 금액의 30%로 계산하여 변경하시오.
update sal_bonus set salary=salary*0.3;

-- 급여 테이블과 상여금 테이블의 합집합 기능을 이용하여 두 테이블의 급여(salary) 컬럼을 합산하여 총급여(money) 뷰로 생성하고, 그 결과를 조회하시오.
CREATE VIEW money as SELECT * FROM salaries UNION SELECT * FROM sal_bonus;
select u_id as 사원번호, sum(salary) as 총급여 from money group by u_id;

-- 급여 테이블과 직원 테이블에 모두 존재하는 사원번호를 교집합하여 all_emp 뷰로 생성하라.
CREATE VIEW all_emp as select u_id from employees INTERSECT select emp_no from salaries;
select * from all_emp;