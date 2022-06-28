use academy;
select * from member_tbl_02;
select custname, phone, address from member_tbl_02 order by custno;
-- 복자가 포함되게
select custname, custno, phone from member_tbl_02 where custname like '%복%';
-- 가입일 2015 10-11
select custnome, custno, phone, address from member_tbl_02 be