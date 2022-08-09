create table user1(
    userid varchar2(50) not null primary key,
    pwd varchar2(300),
    name varchar2(50),
    email varchar2(100),
    tel varchar2(20),
    birth date
);

insert into user1 values('kkt','1111','김기태','kkt@naver.com','010-1234-1234','1979-12-25');
insert into user1 values('admin','1234','관리자','admin@kktshop.com','010-1234-4321','2022-07-18');

commit;
