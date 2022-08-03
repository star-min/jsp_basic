select * from employees;
select * from salaries;
-- 내부 조인을 활용하여 직원 테이블과 급여 테이블에 있는 직원의 직원코드, 이름, 급여를 조회하도록 하시오.
select e.u_id, e.name, s.salary from employees e inner join salaries s on e.u_id = s.u_id; 

-- 서브 쿼리를 활용하여 급여 테이블을 참고하여 직원 테이블에서 급여가 3600000 이상인 직원의 이름, 근무지를 조회하시오.
select name, workplace from employees where u_id in (select u_id from salaries where salary >= 3600000);

-- 직원 테이블에는 있으나 급여 테이블에는 없는 직원의 직원코드, 이름, 입사일의 데이터를 조회(서브쿼리 활용)
select u_id, name, regday from employees where u_id not in (select u_id from salaries); 

create table spot(position varchar(4) primary key, posname varchar(20));
insert into spot values ('A', '부장');
insert into spot values ('B', '과장');
insert into spot values ('C', '차장');
insert into spot values ('D', '대리');
insert into spot values ('E', '사원');
insert into spot values ('F', '차장');
insert into spot values ('G', '주임');
insert into spot values ('H', '계장');
insert into spot values ('W', '상무');
insert into spot values ('X', '전무');
insert into spot values ('Y', '이사');
insert into spot values ('Z', '대표');
select * from spot;

-- 직원 테이블과 직위 테이블을 직위코드로 조인하여 직원코드, 이름, 직위명을 조회할 것.
select e.u_id, e.name, p.posname from employees e inner join spot p on e.position=p.position order by e.u_id;



