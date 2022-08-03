drop table employees;
drop table salaries;
create table employees(u_id varchar(8) primary key, name varchar(20) not null,
  password varchar(20) not null, position varchar(4) not null, workplace varchar(20) not null,
  address varchar(50), birthday date, joinday date, weddingday date);

create table salaries(emp_no varchar(8) primary key, salary number(10) not null, from_date date, to_date date);

commit;