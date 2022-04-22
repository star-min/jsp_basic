show databases;
use academy;
select * from member_tbl_02;

select custname,phone,address from member_tbl_02 order by custno;

select custname,custno,address from member_tbl_02 where custname like '%복%';

select * from member_tbl_02 where joindate between '2015-10-01' and '2015-11-30';

select custname as "이름",phone as "전화번호", address as "주소" from member_tbl_02;

select custno, sum(price) from money_tbl_02 group by custno;
select custno, avg(price) from money_tbl_02 group by custno;
select custno, count(*) from money_tbl_02 group by custno;
select custno, max(price) from money_tbl_02 group by custno;
select custno, min(price) from money_tbl_02 group by custno;

create view money_view as select custno, saleno, pcost, amount, price from money_tbl_02 where price>=1500;
select * from money_view;

select a.custno, a.custname, a.address, sum(b.price) as '합계금액' from member_tbl_02 a inner join
money_tbl_02 b on a.custno=b.custno group by a.custno;

select * from member_tbl_02;
select * from money_tbl_02;
-- 서브쿼리를 활용하여 주소가 서울인 회원의 회원번호, 단가, 수량, 금액을 검색하시오
select custno, pcost, amount, price from money_tbl_02 where custno in (select custno from member_tbl_02);
-- select custname, phone, address from member_tbl where city in ('서울','대전','경기'); 예시

-- 서브쿼리를 활용하여 주소가 서울이 아닌 회원의 회원번호, 단가, 수량, 금액을 검색하시오.
-- select custno, pcost, amount, price from money_tbl_02 where custno not in (select

create view sale_view as select * from sales_tbl_03 union select * from money_tbl_02;
select * from sale_view;

create view sale_cross_view as
select a.custno, a.saleno, b.price from sales_tbl_03 a inner join money_tbl_02 b on a.saleno=b.saleno
and a.custno=b.custno;
select * from sale_cross_view;