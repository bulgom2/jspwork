use jspbookdb;

drop table member;

create table if not exists member(
	id varchar(20) not null,
	passwd varchar(20),
	name varchar(30),
	primary key (id)
);

insert into member values('1', '1234', '홍길순');
insert into member values('2', '1235', '홍길동');

select * from member;
