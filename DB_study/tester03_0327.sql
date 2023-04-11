
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

insert into weather values( '2023-3-27', '�������� �ʹ� ����','����');
insert into weather values( '2023-3-28', '�Ϸ縸 ����','�帲');
insert into weather values( '2023-3-29', '���� ���� ��÷','��');
select * from weather;
insert into schedule values('2023-3-27', 11, '����͵�');
insert into schedule values('2023-3-27', 15, '�ڹٽ��͵�');
insert into schedule values('2023-3-29', 9, '����湮');
select * from schedule;