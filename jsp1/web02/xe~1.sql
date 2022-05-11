create or replace procedure customer_del
is
begin
    delete from customer2;
end;
/
execute customer_del;


create table  customer3 as select * from customer;

create or replace procedure customer_point_up
is
    up_date number :=5;
begin
    update customer3 set visited=visited+1, upoint=upoint+up_date;
end;
/


create or replace function customer_point_up2(ccid in customer3.cid%type)
return number
is
    up_data number := 5;
begin
    update customer3 set visited=visited+1, upoint=upoint+up_data where cid = ccid;
    return up_data;
end;
/
variable pt number;
execute : pt := customer_point_up2('kkt');
select * from customer3;


--------------
create or replace function insert_customer(m_id in vustomer.cid%type,

