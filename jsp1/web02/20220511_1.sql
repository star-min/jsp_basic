-- 1번
-- PL/SQL 기본 출력문 및 오라클 서버에 출력가능하도록 설정
SET SERVEROUT ON;   -- 오라클 서버에 출력가능하도록 설정
begin
    dbms_output.put_line('Hello Oracle PL');
end;
/

-- 2번
-- PL/SQL 변수 선언문과 변수 초기화/값 대입, 출력문
DECLARE
    vname varchar2(40);
    vno number(4);
BEGIN
    vname := '김천사';
    vno := 1004;
    DBMS_OUTPUT.PUT_LINE(vname||'-'||vno);
END;
/

-- 3번
select * from customer;
-- customer 테이블을 복제하여 customer2를 작성하는 SQL;
create table customer2 as select * from customer;
select * from customer2;
commit;
-- customer2 테이블의 데이터를 모두 제거하는 SQL구문에 해당하는 PL작성하되, 그 이름은 customer_del하고, 실행하도록 하라
CREATE OR REPLACE PROCEDURE customer_del
IS
BEGIN
    delete from customer2;
END;
/
execute customer_del;

-- 4번
-- customer 테이블을 복제하여 customer3를 작성하는 SQL;
create table customer3 as select * from customer;
select * from customer3;
-- customer3 테이블의 데이터 중에서 로그인 횟수를 1씩 증가 시키고, 포인트를 5점씩 증가 되는 연쇄동작되도록 PL의 프로시저를 작성하되, 
-- 그 이름은 customer_point_up 으로 하고, 실행하도록 하라.
CREATE OR REPLACE PROCEDURE customer_point_up
IS
    up_data number := 5;
BEGIN
    update customer3 set visited=visited+1, upoint=upoint+up_data;
END;
/
execute customer_point_up;

-- 5번
-- customer3 테이블의 데이터 중에서 로그인한 회원의 로그인 횟수를 1씩 증가 시키고, 포인트를 5점씩 증가 되는 연쇄동작되도록 
-- PL의 함수를 작성하되, 그 이름은 customer_point_up2 으로 하고, 실행하도록 하라.
CREATE OR REPLACE FUNCTION customer_point_up2(ccid in customer3.cid%TYPE)
RETURN NUMBER
IS
    up_data number := 5;
BEGIN
    update customer3 set visited=visited+1, upoint=upoint+up_data where cid = ccid;
    RETURN up_data;
END;
/
variable pt number;
execute :pt := customer_point_up2('kkt');
select * from customer3;

-- 6번
-- customer3 테이블에 고객을 추가하는 PL함수를 작성하고, 실행되도록 하라.
-- 고객 데이터는 본인이 임의로 하고, 함수이름은 insert_customer로 하되
-- 각 매개변수는 m_id, m_pw, m_name, m_tel, m_email, m_birth, m_regdate, m_visited, m_point, m_rank 로 하시오.
CREATE OR REPLACE FUNCTION insert_customer(m_id in customer.cid%TYPE, 
m_pw in customer.upw%TYPE, m_name in customer.uname%TYPE,
m_tel in customer.tel%TYPE, m_email in customer.email%TYPE,
m_birth in customer.birth%TYPE, m_regdate in customer.regdate%TYPE,
m_visited in customer.visited%TYPE, m_point in customer.upoint%TYPE,
m_rank in customer.urank%TYPE)
RETURN number
IS
    data1 number;
BEGIN
    insert into customer values (m_id, m_pw, m_name, m_tel, m_email, m_birth, m_regdate, m_visited, m_point, m_rank);
    commit;
    RETURN data1;
END;
/
variable data_in number;
execute :data_in := insert_customer('kim','7777','김동협', '010-2848-2424', 'kim@hotmail.com', '1984-11-11', sysdate, 1, 1000, 9);
select * from customer;

-- 7번
-- customer3 테이블에서 birth가 1989-12-31 이전이고, 아이디가 kim을 입력받아 회원의 이름을 출력되는 PL의 함수 또는 프로시저를 
-- 작성하고, 실행하되, 그 밖의 기타 PL 지역변수와 매개변수는 임의로 하고, 함수 이름이나 프로시저 이름은 old_customer로 하시오.
CREATE OR REPLACE FUNCTION old_customer(m_birth in date, m_id in customer.cid%TYPE)
RETURN varchar
IS
    u_id customer.cid%TYPE;
    u_name customer.uname%TYPE;
BEGIN
    select uname into u_name from customer where birth <= m_birth and cid=m_id;
    RETURN u_name;
END;
/
select old_customer('1989-12-31','kim') from dual;

CREATE OR REPLACE PROCEDURE old_customer2(m_birth in date, m_id in customer.cid%TYPE)
IS
    v_name customer.uname%TYPE;
BEGIN
    DBMS_OUTPUT.ENABLE; -- %TYPE 데이터형 변수 사용하여 출력가능 모드로 변경
    select uname into v_name from customer where birth <= m_birth and cid=m_id;
    DBMS_OUTPUT.PUT_LINE('회원명 : ' || v_name);
END;
/
execute old_customer2('1989-12-31','kim');


-- 8번
-- customer3 테이블에서 REGDATE(가입일)을 기준으로 정렬하여 테이블의 고객아이디, 고객명, 생일, 가입일 컬럼을 표시되도록 하는
-- PL 프로시저 또는 함수를 작성하고, 실행하되, 프로시저 또는 함수이름을 customer_sort로 하시오.
CREATE OR REPLACE PROCEDURE customer_sort
IS
    TYPE m_id_type IS TABLE OF customer3.cid%TYPE INDEX BY BINARY_INTEGER;
    TYPE m_name_type IS TABLE OF customer3.uname%TYPE INDEX BY BINARY_INTEGER;
    TYPE m_birth_type IS TABLE OF customer3.birth%TYPE INDEX BY BINARY_INTEGER;
    TYPE m_regdate_type IS TABLE OF customer3.regdate%TYPE INDEX BY BINARY_INTEGER;
    i BINARY_INTEGER := 0;
    v_id m_id_type;
    v_name m_name_type;
    v_birth m_birth_type;
    v_regdate m_regdate_type;
BEGIN
    DBMS_OUTPUT.ENABLE;
    DBMS_OUTPUT.PUT_LINE('아이디' || ' ' || '고객명' || ' ' || '출생일' || ' ' || '가입일');
    FOR r in (select cid, uname, birth, regdate from customer3 order by regdate) LOOP
        i := i+1;
        v_id(i) := r.cid;
        v_name(i) := r.uname;
        v_birth(i) := r.birth;
        v_regdate(i) := r.regdate;
    END LOOP;
    FOR j IN 1..i LOOP
        DBMS_OUTPUT.PUT_LINE(v_id(j) || ' ' || v_name(j) || ' ' || v_birth(j) || ' ' || v_regdate(j));
    END LOOP;     
END;
/
EXECUTE customer_sort;

-- 9번
-- customer3 테이블에서 visited 컬럼별로 회원등급을 구하여 고객아이디, 고객이름, 등급을
-- 출력하는 PL 프로시저 또는 함수를 작성하고, 실행하되, IF문, 반복실행문(WHILE, LOOP, FOR) 
-- 를 사용하고, PL 프로시저 또는 함수를 작성하고, 실행하되, 프로시저 또는 함수이름은 : customer_rank 
-- 회원등급 : 10회 이상 방문시 우수회원, 5회 이상 방문시 정회원, 5회 미만 방문시 준회원 으로 하며,
-- 회원등급의 컬럼은 방문횟수인 visited을 활용할 것.
update customer3 set visited=100 where cid='admin';
select * from customer3;
CREATE OR REPLACE PROCEDURE customer_rank
IS
    TYPE m_id_type IS TABLE OF customer3.cid%TYPE INDEX BY BINARY_INTEGER;
    TYPE m_name_type IS TABLE OF customer3.uname%TYPE INDEX BY BINARY_INTEGER;
    TYPE m_visited_type IS TABLE OF customer3.visited%TYPE INDEX BY BINARY_INTEGER;
    TYPE m_rank_type IS TABLE OF customer3.uname%TYPE INDEX BY BINARY_INTEGER;
    i BINARY_INTEGER := 0;
    v_id m_id_type;
    v_name m_name_type;
    v_visited m_visited_type;
    v_rank m_rank_type;
BEGIN
    FOR r IN (SELECT cid, uname, visited from customer3) LOOP
        i := i+1;
        v_id(i) := r.cid;
        v_name(i) := r.uname;
        v_visited(i) := r.visited;
        IF(v_visited(i) >= 10) THEN v_rank(i) := '우수회원';
        ELSIF(v_visited(i) >= 5) THEN v_rank(i) := '정회원';
        ELSE v_rank(i) := '준회원';
        END IF;
    END LOOP;
    DBMS_OUTPUT.ENABLE;
    DBMS_OUTPUT.PUT_LINE('아이디' || ' ' || '고객명' || ' ' || '등급');
    FOR j IN 1..i LOOP
        DBMS_OUTPUT.PUT_LINE(v_id(j) || ' ' || v_name(j) || ' ' || v_rank(j));
    END LOOP; 
END;
/
execute customer_rank;

create table product(tno number, pname varchar2(40), dan number); -- 상품 테이블
create table inventory(ino number, quant number, price number); -- 재고 테이블
create table wearing(ino number, quant number, price number); -- 입고 테이블
create table sales(ino number, quant number, price number); -- 판매 테이블

INSERT INTO product VALUES(100,'새우깡',1500);
INSERT INTO product VALUES(200,'감자깡',1000);
INSERT INTO product VALUES(300,'맛동산',2000);
INSERT INTO product VALUES(400,'양파링',1800);
INSERT INTO product VALUES(500,'고구마깡',1600);

-- 쇼핑몰의 경우 상품 카테고리 등록 -> 상품 등록 -> 입고 -> 판매(고객구입)
--                                            (재고+)  (재고-)           
-- 남성의류 > 바지, 상의, 내의
-- 바지 > 반바지, 겨울바지, 7부, 청바지
-- 반바지 : 핫팬츠, 5부 바지
-- 핫팬츠 : 넘버원 낚시 바지(상품명)

-- 10번
-- 입고(wearing) 테이블에 상품을 입고시킬 때 만약, 새로운 상품(insert)일 경우와 이미 있는 재고 상품(update)일 경우로 분류하여
-- 재고(inventory) 테이블에 반영될 수 있도록 트리거를 작성하되, 트리거 이름은 wearing_trigger로 하고,
-- 임의의 데이터를 입고 테이블에 튜플을 입력하여 자동 재고처리된 그 결과를 확인하시오.
CREATE OR REPLACE TRIGGER wearing_trigger
AFTER INSERT ON wearing
FOR EACH ROW
DECLARE
    v_cnt number;
BEGIN
    select count(*) into v_cnt from inventory where ino=:NEW.ino;
    IF(v_cnt=0) THEN insert into inventory values (:NEW.ino, :NEW.quant, :NEW.price);
    ELSE update inventory set quant=quant+:NEW.quant, price=price+:NEW.price where ino=:NEW.ino;
    END IF;
END;
/

delete from wearing;
select * from inventory;
select * from wearing;
insert into wearing values (200, 3, 3000);


-- 11번
-- 판매가 되면 판매(sales) 테이블에 상품이 등록된다. 그렇다면 재고(inventory) 테이블에 반영되어 튜플이 변경되도록 트리거를 작성하되
-- 트리거 이름은 sales_trigger로 하고,
-- 임의의 데이터를 판매 테이블에 튜플을 입력하여 자동 재고계산된 그 결과를 확인하시오. 
CREATE OR REPLACE TRIGGER sales_trigger
AFTER INSERT ON sales
FOR EACH ROW
DECLARE
    v_cnt number;
BEGIN
    select quant-:NEW.quant into v_cnt from inventory where ino=:NEW.ino;
    IF(v_cnt<=0) THEN delete from inventory where ino=:NEW.ino;
    ELSE update inventory set quant=quant-:NEW.quant, price=price-:NEW.price;
    END IF;
END;
/

select * from inventory;
select ino, sum(quant), sum(price) from sales group by ino;
insert into sales values(200, 3, 3000);

-- 모든 함수, 트리거, 프로시저 제거
-- DROP FUNCTION|TRIGGER|PROCEDURE  함수명|트리거명|프로시저명 
-- ex1) DROP FUNCTION customer_sort -> customer_sort 함수 제거
-- ex2) DROP PROCEDURE customer_sort -> customer_sort 프로시저 제거
-- ex2) DROP TRIGGER sales_trigger -> sales_trigger 트리거 제거
DROP PROCEDURE customer_del;    -- 3번
DROP PROCEDURE customer_point_up;   -- 4번
DROP FUNCTION customer_point_up2;   -- 5번
DROP FUNCTION insert_customer;  -- 6번
DROP FUNCTION old_customer; -- 7번
DROP PROCEDURE customer_sort;   -- 8번
DROP PROCEDURE customer_rank;   -- 9번
DROP TRIGGER wearing_trigger;   -- 10번
DROP TRIGGER sales_trigger; -- 11번
DROP table product; -- 상품 테이블
DROP table inventory; -- 재고 테이블
DROP table wearing; -- 입고 테이블
DROP table sales; -- 판매 테이블