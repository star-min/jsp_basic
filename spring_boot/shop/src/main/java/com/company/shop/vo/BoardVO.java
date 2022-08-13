package com.company.shop.vo;

import lombok.Getter;
import lombok.Setter;

/*
create table board(bno int primary key,
title varchar2(100),
content varchar2(800),
visited int,
resdate date);

commit;

insert into board values(1, '샘플글1', '샘플글1 입니다.', 0, '2022-08-12');
insert into board values(2, '샘플글2', '샘플글2 입니다.', 0, sysdate);

create sequence board_seq increment by 1 start with 3 nocache;

insert into board values(board_seq.nextval, '샘플글3', '샘플글3 입니다.', 0, sysdate);

select * from board;

*/

@Setter
@Getter
public class BoardVO {
	private int bno;
	private String title;
	private String content;
	private int visited;
	private String resdate;
}
