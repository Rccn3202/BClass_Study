--��*******
create table c5emp as select * from emp;
create view viewEmp as select*from c5emp;

--������ ������������ ����� ����� ��� �̰� ��� �����
--��)
select member.ename ����̸�, manager.ename ���ӻ���̸�
   from emp member left outer join emp manager
   on member.mgr = manager.empno;
�� �����
create view viewnameMgr as
select member.ename ����̸�, manager.ename ���ӻ���̸�
   from emp member left outer join emp manager
   on member.mgr = manager.empno;
�� ����
select * from viewnamemgr;   
   
�信�� �ڷ� ã��
select * from viewnamemng where ����̸�='���ȯ';

select * from student;
select * from course;
   
--�������� ����
--course�� ������� ����� cou_id,tea_name, stu_name
select c.cou_id,c.cou_name,c.tea_name,s.stu_id,s.stu_name
from course c,student s 
where c.cou_id=s.cou_id;
--��� �����
--create view ���̸� as ������
create view viewStuCou as 
select c.cou_id,c.cou_name,c.tea_name,s.stu_id,s.stu_name
from course c,student s 
where c.cou_id=s.cou_id;
--�� ����
select * from viewStucou;
select * from viewstucou where cou_id='10';
select * from viewstucou where cou_id in (10,20);

--�信 ����
--�������̺��� �ڷᰡ ����� �� ������ �߻��ؼ� �Է� �� �ȵ�
insert into viewstucou(cou_id, cou_name,tea_name,stu_id,stu_name)
values(50,'������','ȫ�浿',999,'���̹�');

--���̺� �����
create table login(
id varchar2(20),
password varchar2(20)
);

create table member(
phone varchar2(20)
);
--�� ���̺��� ��ģ �� �����
select * from login, member ;
create view vlm as select * from login;

create view vlogin as select * from login;

insert into vlogin values('1000','1234');

select * from vlogin;


--��� �並 ���� �� ������?->����
create or replace view v3login as select * from vlogin;

--�޿��� 800 �̻��� ����� �並 �����
select * from emp;
create or replace view vsal500 as
select * from emp where sal>=500;

--���� �����ͺ��̽����� �䰡 ��� �Ǿ��ִ���
select * from user_views;

select * from vsal500;

--vsal500 ���� �޿��� 50% �λ�
update vsal500 set sal=sal+sal*0.5;

-read only
create or replace view vsal500 as
select * from emp where sal>=500 with read only;
delete from vsal500;

--�信�� dml(insert,update,delete) �ȵǰ� �ϰ�ʹ�
create or replace view vsal700 as
select * from emp where sal between 1500 and 6000 with check option;
--������Ʈ�� �� ���� ����� �ȵ�

--rownum ó���� ���̺� �Էµ� ������ �����. �Էµ� �������� �����ǰ� �ٲ��� ����


