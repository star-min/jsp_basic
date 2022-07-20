create database mycompany;
use mycompany;
show databases;
create table member(
	id varchar(20) primary key,
    pw varchar(20) not null,
    name varchar(20) not null,
    phone varchar(13),
    address varchar(50)
    );

insert into member values ('admin','1234','김성민','010-1004-1004','일산 고양대로 956-3');

select * from member;

update member set pw='4321', phone='010-1101-1111', address='천국 1004동' where id='admin';

delete from member where id='admin';
-- 작성자 김성민.