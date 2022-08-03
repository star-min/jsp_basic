-- 테이블 구조 보기
desc employees;


-- 현재 계정의 사용가능한 뷰/테이블 목록 보기
select * from tab where tname not like '%BIN%';
select TABLE_NAME from all_tables where owner='SCOTT';

