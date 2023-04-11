create table course(
   cou_id  number(4) not null, 
   cou_name varchar(20) null, 
   Tea_name varchar(20) null,
   primary key(cou_id) 
);

create table student(
   stu_id number(4) not null,
   stu_name varchar2(20) null,
   age number(4) null,
   stu_email  varchar2(20) null,
   cou_id number(4) not null,
   sex char(1) default 'M',
   primary key(stu_id),
   foreign key(cou_id) references course(cou_id)
);

-- ���̺�ȿ� �����͸� �ֱ�(�����Ѵ�)
insert into course values( 10, '�����','������');
insert into course values( 20, '�����','������');
insert into course values( 30, '������','Ȳ����');
insert into course values( 40, '��ǥ��','������');

insert into student values( 101, '������',24, 'moon@nate.com', 10, 'M');
insert into student values( 102, '���Ѽ�',22, 'five@nate.com', 20, 'M');
INSERT INTO STUDENT VALUES(103,'���뼮', 22,'again@nate.com',20,'M');
INSERT INTO STUDENT VALUES(104,'����ö', 22,'cook@nate.com',20,'M');
INSERT INTO STUDENT VALUES(105,'��ȫ��', 24,'red@nate.com',10,'M');
INSERT INTO STUDENT VALUES(106,'������', 21,'kim@nate.com',20,'M');
INSERT INTO STUDENT VALUES(107,'�ڽ���', 22,'season@nate.com',20,'M');
INSERT INTO STUDENT VALUES(108,'������', 27,'brother@nate.com',10,'M');
INSERT INTO STUDENT VALUES(109,'������', 22, NULL,20,'F');
INSERT INTO STUDENT VALUES(110,'�ڱ⼮', 34,'flag@nate.com',10,'M');
INSERT INTO STUDENT VALUES(111,'��ȿ��', 24,'od@nate.com',30,'F');
INSERT INTO STUDENT VALUES(112,'��â��', 34,'window@nate.com',30,'M');
INSERT INTO STUDENT VALUES(113,'������', 28, NULL, 10,'M');
INSERT INTO STUDENT VALUES(114,'�̺���', 29,'bbong@nate.com',10,'M');
INSERT INTO STUDENT VALUES(115,'��â��', 24,'chang@nate.com',30,'M');
INSERT INTO STUDENT VALUES(116,'����', 34,'shine@nate.com',10,'M');

-- ���̺�ȿ� �����͸� �˻��ϱ�
select * from course;
select * from student;



--������ �̸� ������ �����ϱ�
select stu_id,stu_name, s.cou_id,cou_name,tea_name
from student s, course c
where s.cou_id=c.cou_id
order by tea_name asc;

--�л� ���̰� ���� ���� ����� ������ ������?
select * from student s, course c where s.cou_id=c.cou_id and s.age=(select max(s.age) from student s, course c);

--����� ���� �����ϴ� ��� �ο���

--���л�,������ ������ ������ �����ϴ� �л�


--couse ���̺� �÷� �߰��ϱ� tea_id
alter table course
add tea_id number(4);

--mento_id
alter table student
add mento_id number(4);
select * from student;

update student set mento_id=103 where cou_id=10;
update student set mento_id=111 where cou_id=20;
update student set mento_id=108 where cou_id=30;
ALTER TABLE student DROP COLUMN MENTO_ID;
roll back;

update student set memto_id=103 where stu_id=101;
   update student set memto_id=105 where stu_id=102;
   update student set memto_id=111 where stu_id=103;
   update student set memto_id=101 where stu_id=104;
   update student set memto_id=103 where stu_id=105;
   update student set memto_id=102 where stu_id=106;
   update student set memto_id=102 where stu_id=107;
   update student set memto_id=106 where stu_id=108;
   update student set memto_id=105 where stu_id=109;
   update student set memto_id=105 where stu_id=110;
   update student set memto_id=104 where stu_id=111;
   update student set memto_id=104 where stu_id=112;
   update student set memto_id=110 where stu_id=113;
   update student set memto_id=110 where stu_id=114;
   update student set memto_id=112 where stu_id=115;
   update student set memto_id=112 where stu_id=116;

desc student;
  alter table student
     add memto_id number(4); 
     
-- ����) �ش��л��� ������ ������ �̸���, ������������� ����Ͻÿ� 
-- ��) ������ ����� ���뼮�̰�, �����̸����� again@nate.com ����������� : ����� 
 -- 1�ܰ� �л��� �����̸� �˻�
  select * from student s1, student s2;
   select * from student s1, student s2 where s1.memto_id = s2.stu_id;
   select s1.stu_name, s2.stu_name, s2.stu_email from student s1, student s2 where s1.memto_id = s2.stu_id;
 -- 2�ܰ� ���䰡 �����ϴ� ������?
 -- self join�ϰ� course ���̺� ����
   select * from student s1, student s2, course c 
          where s1.memto_id = s2.stu_id and s2.cou_id = c.cou_id;
 -- ���ϴ� �÷� ���ֱ�
   select s1.stu_name, s2.stu_name, s2.stu_email, c.cou_name from student s1, student s2, course c 
          where s1.memto_id = s2.stu_id and s2.cou_id = c.cou_id;


select *from course;
--2.�����Ե� �̸����� �����ϴ� �л� �й�,�̸���,�����
 -- 1�ܰ� �л��� �����̸� �˻�
  select * from student s, course c;
   select * from course c,student s  where s.cou_id = c.cou_id;
   --�л�,�л�����,������ ����
   select * from course c,student s1, student s2 where c.cou_id=s1.cou_id and s1.stu_id=s2.memto_id; 
   select c.tea_name, s1.stu_id,s1.stu_name, s1.stu_email, s2.memto_id, s2.stu_name, s2.stu_email, s2.sex from course c,student s1, student s2 where c.cou_id=s1.cou_id and s1.stu_id=s2.memto_id
   order by c.tea_name asc; 

select  c.tea_name,s.stu_name, s.stu_id, s.stu_email,s. 
 from student s, course c where s.cou_id = c.cou_id;
  -- 2�ܰ� ���䰡 �����ϴ� ������?
 -- self join�ϰ� course ���̺� ����
   select * from student s1, student s2, course c 
          where s1.memto_id = s2.stu_id and s2.cou_id = c.cou_id;
 


select * from student;
select s.student as "STU_NAME", memto.stu_name as "MEmTO_ID"
from student s, student memto
where s.memto_id = memto.stu_id;




-------------------------------------------

select member.ename ����̸�, manager.ename ���ӻ���̸�
   from emp member left outer join emp manager
   on member.mgr = manager.empno;
