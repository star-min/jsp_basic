use company;
select * from member; -- ResultSet(executeQuery)
select * from member where id='admin'; -- ResultSet(executeQuery)
update member set pw='3333' where id='dong'; -- int(executeUpdate)
insert into member values("정우희", "jeong","7777","01099991111","부곡하와이 79"); -- int
delete from member where id='jeong'; -- int
desc board;
select * from board;