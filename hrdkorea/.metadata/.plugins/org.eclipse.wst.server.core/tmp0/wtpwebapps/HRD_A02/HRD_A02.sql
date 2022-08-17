select * from COURSE_TBL;
select * from lecturer_tbl;
--
select 
	a.id, a.name, a.credit, a.lecturer, a.week, a.start_hour, a.end_end, b.name as man 
from
	course_tbl a 
inner join 
	lecturer_tbl b 
on 
	a.lecturer = b.idx;
--	
	
select 
	*
from
	course_tbl a 
inner join 
	lecturer_tbl b 
on 
	a.id = b.idx;
	
	select a.id, a.name, a.credit, a.lecturer, a.week, a.start_hour, a.end_end, b.name as man from course_tbl a inner join lecturer_tbl b on a.lecturer = b.idx;