select * from employees;
select * from salaries;
-- 직원 테이블에서 김예은 직원의 집주소를 장항동 1512로 변경
update employees set address='장항동 1512' where name='김예은';

-- 급여 테이블에서 직원코드가 C1006인 데이터를 삭제
delete from salaries where u_id='C1006';

-- 직원 테이블에서 직원코드가 D1011인 레코드를 추가
--		이름	비밀번호	직위코드	근무지	집주소		생년월일	입사일
--		이규호	ss12		D		부산	능곡동 128	95-12-04	22-03-27
insert into employees(u_id, name, password, position, workplace, address, birth, regday) values 
('D1011', '이규호', 'ss12', 'D', '부산', '능곡동 128', '95-12-04', '22-03-27');

-- 급여 테이블에서 직원코드가 C1012인 레코드를 추가
--		급여	근무시작일 	근무종료일
--		3820000	2022-05-01	2022-05-31
insert into salaries values('C1012',3820000,'22-05-01','22-05-31');
commit;

-- 직원 테이블에서 근무지가 서울이거나 일산이거나 제주인 직원의 직원코드, 이름, 입사일을 조회
select u_id, name, regday from employees where workplace='서울' or workplace='일산' or workplace='제주';
select u_id, name, regday from employees where workplace in ('서울','일산','제주');

-- 직원 테이블에서 급여가 3500000~3800000인 직원의 모든 항목을 조회
select * from employees where u_id in (select u_id from salaries where salary >= 3500000 and salary<=3800000);
select * from employees where u_id in (select u_id from salaries where salary between 3500000 and 3800000);

-- 직원 테이블에서 2015년 1월 1일~2021년 10월 31일 에 입사한 직원의 직원코드, 이름을 조회하되 이름순으로 정렬하여 조회
select u_id, name from employees where regday between '15-01-01' and '21-10-31' order by name;

-- 직원 테이블에서 직위코드와 직위별(직위코드별) 인원수를 조회하되 직위코드별로 정렬하여 조회하고, 별칭(alias) 기능을 활용하여 출력될 수 있도록 할 것.
select position as "직위코드", count(*) as "직위별 인원수" from employees group by position;

-- 급여 테이블에서 부서별 급여액의 합계를 조회할 것.
--	(부서는 직원코드가 A로 시작하면, 인사부, B로 시작하면 사업부, C로 시작하면, 기술부, D로 시작하면, 생산부,
--	E로 시작하면 공무부임)
-- 테이블 생성시
-- create table part(partcode varchar(4) primary key, partname varchar(20));
-- insert into part values('A','인사부');
-- insert into part values('B','사업부');
-- insert into part values('C','기술부');
-- insert into part values('D','생산부');
-- insert into part values('E','공무부');
select * from part;
-- commit;
select substr(u_id, 1, 1) as "부서코드", sum(salary) as "부서별급여액" from salaries group by substr(u_id, 1, 1);

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
-- SELECT B.PARTNAME AS 부서명, sum(A.salary) AS 인원수 FROM salaries A INNER JOIN PART B ON substr(A.u_id, 1, 1)=B.PARTCODE GROUP BY B.PARTNAME, B.PARTCODE;
-- SELECT B.PARTNAME AS 부서명, COUNT(*) AS 인원수 FROM employees A INNER JOIN PART B ON substr(A.u_id, 1, 1)=B.PARTCODE GROUP BY B.PARTNAME, B.PARTCODE;

-- 또 u_id(직원코드)에서 부서코드인 첫 번째 글자만 추출하여 다른 테이블로 복제하여 만들어서 진행하는 경우
-- create TABLE partdata as select substr(u_id, 1, 1) as partcode, name, password, position, workplace, address, birth, regday, wedday from employees;
-- select * from partdata;
-- SELECT B.PARTNAME AS 부서명, COUNT(*) AS 인원수 FROM PARTDATA A INNER JOIN PART B ON A.PARTCODE=B.PARTCODE GROUP BY B.PARTNAME, B.PARTCODE;

