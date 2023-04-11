
drop table disease;
create table patient(
p_code varchar(5) not null,
p_name varchar(3),
d_code varchar(3) not null,
p_age number(2),
primary key (p_code)
);

create table disease(
d_code varchar(5) not null,
d_name varchar(3),
d_sym varchar(3),
foreign key(d_code) references patient(d_code)
);

create table weather(
we_date date not null,
we_memo varchar2(50),
we_text varchar2(20),
primary key (we_date)
);

create table schedule(
sc_date date not null,
sc_time number(2),
sc_memo varchar2(50),
foreign key(sc_date) references weather(we_date)
);

insert into weather values( '2023-3-27', '과제물이 너무 많음','맑음');
insert into weather values( '2023-3-28', '하루만 참자','흐림');
insert into weather values( '2023-3-29', '오늘 복권 당첨','비');
select * from weather;
insert into schedule values('2023-3-27', 11, '영어스터디');
insert into schedule values('2023-3-27', 15, '자바스터디');
insert into schedule values('2023-3-29', 9, '은행방문');
select * from schedule;