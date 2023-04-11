--3�ܰ� ���̺��� �����
--���̺� ����� (1. ������ �����(ǥ ���,������)
create table course(
cou_id number(4) not null,
--varchar�� ������ ����. 20 ������ �˾Ƽ� �߰��� 21,22...
cou_name varchar(20) null,
tea_name varchar(20) null,
--primary key: (�⺻Ű)ǥ�� ��Ÿ�� �� ��ǥ�� �Ǵ� �÷�(������ȣ,�л���ȣ,�ֺ��ȣ..)
primary key(cou_id)
);
--course��� ���̺� �����

--student ���̺� �����
create table student(
stu_id number(4) not null,
stu_name varchar(20) null,
age number(4) null,
stu_email varchar2(20) null,
cou_id number(4) not null,
sex char(1) default 'M',
primary key(stu_id),
--foreign key : (�ܷ�Ű) �ٸ� ���̺��� �⺻Ű�� ���踦 �δ� Ű(�������̺� ������ 10�� �л����̺� ������ 10 ����)
--foreign key(�÷���) references �ٸ����̺��(�ٸ����̺��� �÷���)
foreign key(cou_id) references course(cou_id)
);

--���̺� �ȿ� ������ �ִ´�
insert into course values(10, '�����','������');
insert into course values(20, '�ڹ�','������');
insert into course values(30,'������','Ȳ����');
insert into course values(40,'��ǥ��','������');
--101,102.. primary key�� �ѹ��� �ǹǷ� �ٽ� �Է� �Ұ�
insert into student values(101,'������',24,'aaa@aa',10,'M');
insert into student values(102,'������',22,'bbb@aa',20,'M');
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


--Ȯ��: ���̺� �ȿ� �����͸� �˻��ϱ�
select *from course;
select *from student;

--�� ���̺� �����
create table dept01(
deptno number(4),
dname varchar2(10),
loc varchar2(9)
);
--���̺� ���� �����ϱ� dname varchar(10) -> dname varchar(30)
--������ �ս��� �߻��� �� ����. �� �� ������ ���ϴ� ���� ����
alter table dept01(
modify(dname varchar2(30)); --�÷� ����

alter table dept01
add(etc varchar2(50)); --�÷� �߰�

alter table dept01
drop(etc); --�÷� ����

--���̺� ���� ����
desc dept01;

--���̺� �̸� ����
rename dept01 to dept02;

--���̺� �ȿ� ���ڵ�(=�ο�=��(���� ������)) ��� ����
truncate table student;

--���̺��� ���ڵ�� ������ ��� �����ϱ�
drop table student;

--DCL
--create user test2 identified by 1234; -> �����ڰ� �ƴ� �����(���Ѿ���)�� �ٸ� ����ڸ� ���� �� ����
--DBA���� �������Ѵ�

--ppt28 ����
create table dept(
--�⺻Ű�� �ݵ�� not null �־��־���Ѵ�
deptno number(2) not null,
dname varchar2(14),
loc varchar2(13),
primary key(deptno)
);

create table emp(
empno number(4)not null,
ename varchar2(10),
job varchar2(9),
mgr number(4),
hiredate date,
sal number(7,2), --���� 7�ڸ�, �Ҽ��� 2�ڸ�
comm number(7,2),
deptno number(2) not null,
primary key(empno),
foreign key(deptno) references dept(deptno)
);

select *from dept;
select *from emp;

drop table dept02;
drop table emp02;


--dept�� ������ �����ϱ�
insert into dept(deptno,dname,loc)
values(10,'�渮��','����');
--into ������ �Է��� ������� ����
insert into dept(dname,loc,deptno)
values('�λ��','��õ',20);
--�����ϰ� �߰��ϱ�(�ʱ⿡ �Է��� ������� ����)
insert into dept values(30,'������','����');
--�����ϰ� �� �� ������ �ٲ�� ��������
--insert into dept values('������','����',10);

--dept�� ��� �÷� ����
select * from dept;
--deptno�� ����
select deptno from dept;

INSERT INTO EMP (empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES(1001, '����', '���', 1013, to_date('2007-03-01','yyyy-mm-dd'), 300, NULL, 20);
INSERT INTO EMP (empno,ename,job,mgr,hiredate,sal,comm,deptno)VALUES(1002, '�ѿ���', '�븮', 1005, to_date('2007-04-02','yyyy-mm-dd'), 250, 80, 30);
INSERT INTO EMP (empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES(1003, '����ȣ', '����', 1005, to_date('2005-02-10','yyyy-mm-dd'), 500, 100, 30);
INSERT INTO EMP (empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES(1004, '�̺���', '����', 1008, to_date('2003-09-02','yyyy-mm-dd'), 600, NULL, 20);
INSERT INTO EMP (empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES(1005, '�ŵ���', '����', 1005, to_date('2005-04-07','yyyy-mm-dd'), 450, 200, 30);
INSERT INTO EMP (empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES(1006, '�嵿��', '����', 1008, to_date('2003-10-09','yyyy-mm-dd'), 480, NULL, 30);
INSERT INTO EMP (empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES(1007, '�̹���', '����', 1008, to_date('2004-01-08','yyyy-mm-dd'), 520, NULL, 10);
INSERT INTO EMP (empno,ename,job,mgr,hiredate,sal,comm,deptno)  VALUES(1008, '���켺', '����', 1003, to_date('2004-03-08','yyyy-mm-dd'), 500, 0, 30);
INSERT INTO EMP (empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES(1009, '�ȼ���', '����', NULL, to_date('1996-10-04','yyyy-mm-dd'),1000, NULL, 20);
INSERT INTO EMP  (empno,ename,job,mgr,hiredate,sal,comm,deptno)VALUES(1010, '�̺���', '����', 1003, to_date('2005-04-07','yyyy-mm-dd'), 500, NULL, 10);
INSERT INTO EMP(empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES(1011, '�����', '���', 1007, to_date('2007-03-01','yyyy-mm-dd'), 280, NULL, 30);
INSERT INTO EMP(empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES(1012, '������', '���', 1006, to_date('2007-08-09','yyyy-mm-dd'), 300, NULL, 20);
INSERT INTO EMP(empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES(1013, '������', '����', 1003, to_date('2002-10-09','yyyy-mm-dd'), 560, NULL, 20);
INSERT INTO EMP (empno,ename,job,mgr,hiredate,sal,comm,deptno)VALUES(1014, '���μ�', '���', 1006, to_date('2007-11-09','yyyy-mm-dd'), 250, NULL, 10);

select * from emp;
select job from emp;
--�ߺ��� ������ 1���� ����ϱ�, �ߺ����� (���� 2���̸� ����)
select distinct job from emp;












select * from student;
-- 1) ���� �ڵ�(cou_id)�� 10�̸� '�ڹ�'���� 20�̸� '�ڹٽ�ũ��Ʈ'���� 30�̸� '�����ͺ��̽�'���� 40�̸� '������'���� �ܴ̿� '�⺻'����
select distinct cou_id,
    case when cou_id=10 then '�ڹ�'
        when cou_id=20 then '�ڹٽ�ũ��Ʈ'
        when cou_id=30 then '�����ͺ��̽�'
        when cou_id=40 then '������'
        else '�⺻'
    end ������
from student order by cou_id;

-- 2) �̸��� '��'���̰� ���̰� 25�� �̻��� ����� 'A���ǽǷ� ������' '��'���̰� ���̰� 25�� �����̸� 'B���ǽǷ� ������'
select stu_name,
    case when (stu_name like ('��%') and age >= 25) then 'A���ǽǷ� ������'
        when (stu_name like ('��%') and age <= 25) then 'B���ǽǷ� ������'
    end ���ǽ�
from student;

-- 3) ����(sex)�� ����(M)�̸� '����ȭ����� 1��' ����('F')�̸� '����ȭ����� 2,3��'���� ����ϱ�
select sex,
    case when (sex = 'M') then '����ȭ����� 1��'
        when (sex = 'F') then '����ȭ����� 2,3��'
    end ȭ���
from student;

select * from emp;
select count(comm) from emp;
select count(*) from emp;
select sum(sal), avg(sal),max(sal) from emp;
select count(distinct job) from emp;
-�޿� 560���� ���� �޴� ��� �̸�, �޿�
select ename, sal  from emp where sal>=464;
select round(avg(sal)) from emp;
select ename, sal  from emp where sal>=(select round(avg(sal)) from emp);

select * from student;
select stu_name, age from student where age<=(select round(avg(age)) from student);
--cou_id���� ������ ���, �ִ� ���� ���ϱ�
select cou_id trunc(avg(age)),max(age) from student group by cou_id order by cou_id asc;












