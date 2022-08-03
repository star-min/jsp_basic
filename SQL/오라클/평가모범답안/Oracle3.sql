insert into employees(u_id, name, password, position, workplace, address, birthday, joinday) values(
'A1001', '길정훈', 'a1234', 'A', '서울', '화정동 912', '79-12-25', '03-02-17');
insert into employees values('A1002', '김동협', 'a3421', 'B', '일산', '창신동 128', '87-01-08', '10-02-28', '15-02-28');
insert into employees values('B1003', '김성민', 'b111', 'B', '강남', '창릉동 1004', '84-09-23', '07-11-15', '13-11-15');
insert into employees(u_id, name, password, position, workplace, address, birthday, joinday) values(
'B1004', '김예은', 'c456', 'D', '대전', '흥도동 37', '00-08-04', '21-09-26');
insert into employees(u_id, name, password, position, workplace, address, birthday, joinday) values(
'C1005', '김준호', 'z675', 'C', '대구', '행신동 67', '94-11-13', '18-01-05');
insert into employees values('C1006', '김태균', 'q789', 'A', '부산', '도내동 13', '80-08-19', '03-10-11', '09-10-11');
insert into employees values('D1007', '김효민', 'g478', 'B', '광주', '성사동 178', '83-07-07', '06-08-30', '12-08-30');
insert into employees(u_id, name, password, position, workplace, address, birthday, joinday) values(
'D1008', '신길호', 'd666', 'C', '전주', '원흥동 75', '96-09-04', '19-10-27');
insert into employees(u_id, name, password, position, workplace, address, birthday, joinday) values(
'E1009', '여승원', 'e964', 'A', '제주', '백석동 777', '81-03-05', '04-04-27');
insert into employees(u_id, name, password, position, workplace, address, birthday, joinday) values(
'E1010', '이규진', 'h369', 'D', '강릉', '마두동 888', '01-04-27', '21-06-19');
select * from employees;
commit;

insert into salaries values('A1001', 4000000, '22-05-01', '22-05-31');
insert into salaries values('A1002', 3600000, '22-05-01', '22-05-31');
insert into salaries values('B1003', 3500000, '22-05-01', '22-05-31');
insert into salaries values('B1004', 3350000, '22-05-01', '22-05-31');
insert into salaries values('C1005', 3450000, '22-05-01', '22-05-31');
insert into salaries values('C1006', 3750000, '22-05-01', '22-05-31');
insert into salaries values('D1007', 3550000, '22-05-01', '22-05-31');
insert into salaries values('D1008', 3400000, '22-05-01', '22-05-31');
insert into salaries values('E1009', 3700000, '22-05-01', '22-05-31');
insert into salaries values('E1010', 3150000, '22-05-01', '22-05-31');
select * from salaries;
commit;

select * from employees;
select * from salaries;
-- 직원 테이블에서 김예은 직원의 집주소를 장항동 1512로 변경
update employees set address='장항동 1512' where name='김예은';

-- 급여 테이블에서 직원코드가 C1006인 데이터를 삭제
delete from salaries where emp_no='C1006';


