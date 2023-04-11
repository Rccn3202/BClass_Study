
drop table student;

create table student(
stu_num number(7) not null,
stu_name varchar(20),
stu_id number(14) not null,
stu_age number(2),
t_code varchar(20) not null,
primary key (stu_num),
foreign key(t_code) references teacher(t_code)
);

create table teacher(
t_code varchar(20) not null,
t_name varchar(20),
t_dept varchar(20),
t_phone number(11) not null,
t_area varchar(20),
primary key (t_code)
);


insert into student values(2312051,'ȫ�浿',0405074063574,20,'T-100');
insert into student values(2211051,'�̼���',0211074063574,22,'T-200');

insert into teacher values('T-100','������','��ǻ��',01000000001,'�̰���');
insert into teacher values('T-200','�̼���','����',01000000002,'������');
