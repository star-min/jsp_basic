-- 직원 테이블에서 2015년 1월 1일~2021년 10월 31일 에 입사한 직원의 직원코드, 이름을 조회하되 이름순으로 정렬하여 조회
select u_id, name from employees where joinday between '15-01-01' and '21-10-31' order by name;

-- 직원 테이블에서 직위코드와 직위별(직위코드별) 인원수를 조회하되 직위코드별로 정렬하여 조회하고, 별칭(alias) 기능을 활용하여 출력될 수 있도록 할 것.
select position as "직위코드", count(*) as "직위별 인원수" from employees group by position;

-- 급여 테이블에서 부서별 급여액의 합계를 조회할 것.
--	(부서는 직원코드가 A로 시작하면, 인사부, B로 시작하면 사업부, C로 시작하면, 기술부, D로 시작하면, 생산부,
--	E로 시작하면 공무부임)
-- commit;
select substr(emp_no, 1, 1) as "부서코드", sum(salary) as "부서별급여액" from salaries group by substr(emp_no, 1, 1) order by substr(emp_no, 1, 1);

-- 테이블 생성시
-- create table part(partcode varchar(4) primary key, partname varchar(20));
-- insert into part values('A','인사부');
-- insert into part values('B','사업부');
-- insert into part values('C','기술부');
-- insert into part values('D','생산부');
-- insert into part values('E','공무부');
-- select * from part;
-- commit;
-- 만약, 위와 같이 part 테이블을 생성하고, 데이터를 추가했다면, 아래와 같이 부서별 인원수을 구하거나 급여액의 합계를 계산할 수 있음.
-- SELECT B.PARTNAME AS 부서명, sum(A.salary) AS 급여액합계 FROM salaries A INNER JOIN PART B ON substr(A.emp_no, 1, 1)=B.PARTCODE GROUP BY B.PARTNAME, B.PARTCODE;
-- SELECT B.PARTNAME AS 부서명, COUNT(*) AS 인원수 FROM employees A INNER JOIN PART B ON substr(A.u_id, 1, 1)=B.PARTCODE GROUP BY B.PARTNAME, B.PARTCODE;

-- 또 u_id(직원코드)에서 부서코드인 첫 번째 글자만 추출하여 다른 테이블로 복제하여 만들어서 진행하는 경우
-- create TABLE partdata as select substr(u_id, 1, 1) as partcode, name, password, position, workplace, address, birthday, joinday, weddingday from employees;
-- select * from partdata;
-- SELECT B.PARTNAME AS 부서명, COUNT(*) AS 인원수 FROM PARTDATA A INNER JOIN PART B ON A.PARTCODE=B.PARTCODE GROUP BY B.PARTNAME, B.PARTCODE;