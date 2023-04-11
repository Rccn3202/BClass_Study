-- 7�� ���̺� ���� ����, ����, �����ϴ� DDL (Database Define Language)-������ ���Ǿ�
-- ��ǥ ���̺� ����� ���� ����
-- ��Ű�� ??
create table emp01(
   empno number(4),
   ename varchar2(14),
   sal number(7,3)
);
desc emp01; -- ���̺��� ���� ����
create table emp02(
   empno number(4) default 1000,
   ename varchar2(14) default 'ȫ�浿',
   sal number(7,3)
);
insert into emp01( empno ) values ( 2000 );
insert into emp02( sal ) values ( 500 );
select * from emp01;
select * from emp02;
-- ���̺� ������ ����� �̸� �μ��� �Ի���-�⺻������ ���� ��¥  ���̺���� emp03
create table emp03(
   ename varchar2(20),
   deptno varchar2(20),
   hiredate date default sysdate
);
-- ������ �����ϱ� ������ ����� 2022/10/08  �̼��� ������ 2023/03/31
insert into emp03 values( '������', '�����', '2022/10/08');
-- insert into emp03 values( '�̼���', '������' );���� 
insert into emp03 ( ename, deptno) values( '�̼���', '������' );
select * from emp03;

-- emp01 ���̺�ȿ� birth �÷� �߰��ϱ�
alter table emp01
  add( birth date default sysdate );
-- ���̺� ��������
desc emp01;
-- sal �÷��� �ڷ����� number(7,3) --> number(8) �����ϱ� ������ �������� ����
alter table emp01
  modify( sal number(8) );
--  empno varchar2(10) ename varchar2(20) �� �����ϱ� ���� : �����Ͱ� ������ ������ ������ �� ����. 
alter table emp01
  modify( empno varchar2(10), 
          ename varchar2(20) );
          
select * from emp01;
-- empno�� ���� null�� �����ϱ�
update emp01 set empno = null ;

select * from emp02;
-- sal �÷��� �����
alter table emp02
   drop column sal; 
desc emp02;
select * from emp03;
-- deptno, hiredate �÷��� ��� �����ϱ� ���� 1���� �÷��� �����. ��� �÷��� �� ���� �� ����. �ּ� 1���� ���� �ξ�� �Ѵ�. 
alter table emp03
   drop column deptno;
alter table emp03
   drop column hiredate;
alter table emp03
   drop column ename;
-- ���ڵ���� ���� ���� ��쿡 �÷� ����(�߰�, ����, ����)�� ��� �����ͺ��̽� �ӵ��� �������ϴ�.  
-- �׷��� �ȵ˴ϴ�. ������ �÷��� �ٷ� �ٷ� ����°� �ƴ϶� unused�� ����� �ΰ� ���߿� �Ѳ����� �����մϴ�.
select * from emp02;
alter table emp02
  set unused ( ename ); -- ������� ���� �÷��� üũ�ϴ� ��
desc emp02; 
select * from emp02; -- unused�� �÷��� �˻��� ���� �ʴ´�.
alter table emp02  -- unused�� �÷��� ������ �����Ѵ�.
  drop unused columns;
  
-- ���̺�� ����
select * from emp01;
rename emp01 to newEmp01;
desc newEmp01;
select * from newEmp01;

-- ���̺��� ������ �����ϴ� �� = ���̺� ����
drop table newEmp01;
drop table emp03;

-- ���̺� �Ӿȿ� ������(���ڵ�)�� ��� �����ϱ�
create table copyEmp as select * from emp;
-- ���̺� �Ӿȿ� ������(���ڵ�)�� ��� �����ϱ� ���1) delete������  ���2) truncate table��  
select * from copyEmp;  
--  ���1) delete������ Ʈ����ǿ��� �۾��� �̷�� ���Ƿ� commit �ϱ� ���� rollback�ؼ� ������ ����� �� �ִ�. 
delete from copyEmp;
rollback; -- ������� �ߴ� ����� Ʈ�����( all or nothing )���� �۾��ϴ� �͵��� �ǵ����� 
-- Ʈ������� ���࿡�� ���� �����ϴ� ���� ���� ��� �������� 100% �Ϸ�Ǿ���� ����, �߰��� ���߸� ó������ �ǵ��� ���� ��  

-- ���2) truncate table -- Ʈ����ǰ��� �Ǵ� Ʈ����� �ý��� �������� �۾��� �ϴ� ���� �ƴ϶� �ٷ� DB���̺��� �������� ���� ��� �ȵ�
truncate table copyEmp; -- rollback���� �ǵ����� �ϴϱ� �ȵ�. 


-- ������ ��ųʸ�
-- ����ڰ� ����� ���̺��� �ƴϰ� �����ͺ��̽� �������� �ڵ����� ����� �����Ͽ� �ش�. 
-- ����ڴ� ���⸸ �Ѵ�. ����ڴ� �����ͺ��̽� �����ȿ� ��� �ִ� ������ ���� �̿��Ѵ�. 
-- user_  all_  dba_
-- ~~ ���� - ����, ����, ����, ���� ���� �Ǿ� ����
-- ~~ �д´� - ���⸸ ������
select table_name from user_tables;
select * from user_tables;
select table_name, max_trans from user_tables;

select * from all_tables;

-- ------------
-- DML - Data Manipulation Language  - ������ ���۾� �������ڰ� �ڹ��ڵ忡 ��ɾ� �� �ش�. 
-- select insert update delete 
create table dept01(
  deptno number(2),
  dname varchar2(14),
  loc varchar2(13)
);

desc dept01;

insert into dept01 values( 10, '�渮��', '����') ;
-- insert into dept01 values( 20, '�λ��','��õ' ); 
-- insert�� �ڿ� select�� ������ ����� ���ʴ�� �� ���̺��� �÷��� �־� �ش�.
insert into dept01(deptno, dname, loc)  select deptno, dname, loc from dept where deptno = 20 ; 
-- select���� ������(4��)�� ��� 4���� ���� ���Եȴ�.
insert into dept01(deptno, dname, loc)  select deptno, dname, loc from dept  ; 
-- select���� ������(4��)�� ��� 4���� ���� ���Եȴ�.
insert into dept01(deptno, dname, loc)  select deptno, dname from dept  ;   -- error  ', loc' ������
insert into dept01(deptno, dname)  select deptno, dname from dept  ;  -- insert�� �������� �̷��� �˻��Ͻø� �ȴ�.  
-- ���� ����, ���� ����, ��¥ ����, null ����
-- dept01 ���̺� ���� �÷� date �߰��ϱ� 
alter table dept01
  add birth date;
desc dept01;
-- deptno 20 or 30 �� ���ڵ�ȿ� ���� ��¥�� ������ ���� �־� �ּ���
insert into dept01 ( deptno, dname, loc, birth ) 
       select  deptno, dname, loc, sysdate from dept where deptno in ( 20,30 );
select * from dept01;
-- dname ������� ����� �μ�, �μ���, ����, birth�� 1990/12/25�� �����ϱ� 


select * from dept01;

select * from dept;
-- dept���̺��� tourism �÷��� �����ϱ�
alter table dept 
   drop column tourism;
-- deptno�� 20�� ���ڵ常 �˻��ϱ�
select * from dept where deptno = 20;



update emp set sal=sal+50 where mgr=7566;
update emp set comm=comm+30 where job in('clerk','manager');
update emp set comm=comm+50 where sal<= (select avg(sal) from emp);
update emp set sal=sal-100 where sal=(select max(sal) from emp);
select ename from emp where sal in (
select max(sal) from emp group by deptno);

update emp set sal=sal-100 where sal in (
select max(sal) from emp group by deptno);
select * from emp;
job ���� �Ǵ� �Ի��� 98/12/31 �����̸� �޿�+��ձ޿�
update emp set sal=sal+(select avg(sal) from emp) 
where job='president' or hiredate<='81/05/01';
update emp set job='CLERK' where job='CLERK10'; 

--delete
--delete from emp where ���ǹ�
create table c42mp as select * from emp;
select * from c42mp;
delete from c42mp where sal<=800;

delete from c42mp where mgr in(7782, 7499);

delete from c42mp where not(ename like 'A%' or ename like 'E%');

delete from c42mp where comm>=100;

delete from c42mp where deptno in(10,20);

rollback;

select * from emp;
rollback;
commit;
update emp set sal=sal+500 where job='PRESIDENT';


select constraint_name, constraint_type, table_name from user_constraints;






create table emp111(
empno number(4),
ename varchar2(10),
job varchar2(10),
deptno number(2),
constraint emp111_empno_pk primary key(empno)
);

----------------
-- ���ڵ带 ������ �� inset��
-- ���� insert into ���̺�� (�÷���1, �÷���2 ...) values( '������',...);
-- ���ڵ带 ������ �� update��
-- ���� update ���̺�� set �÷��� = '������', ... where ������ 
select * from emp;
-- mgr 1005�� ����� �޿��� 50���� �λ�
update emp set sale = sale+50 where mgr=1005;
-- job�� ���, �븮�� ����� ���ʽ��� 30���� �λ��� �ּ���
update emp set comm = comm + 30 where job in ('���','�븮');
-- �Ի����� 05�� ������ ����� �޿��� 100���� �λ��ϼ���.
update emp set sale = sale + 100 where hiredate <= '05/01/01';
-- ��� �޿����� ���� ���� ������ ���ؼ� ���ʽ� 50���� �����ϼ���.
-- ��� �޿�?
select avg(sale) from emp;
update emp set comm = comm + 50 where sale <= ( select avg(sale) from emp );
select * from emp;
-- �μ����� ���� ���� �޴� ����� �޿� 100���� �谨�ϱ�
-- 1�ܰ� �μ����� ���� ���� �޴� �����?
select ename, deptno, sale from emp where  sale in ( select  max(sale) from emp group by deptno );
select sale from emp where  sale in ( select  max(sale) from emp group by deptno );
update emp
  set sale = sale - 100
  where   sale in ( select  max(sale) from emp group by deptno )  ;
-- job �����̰ų� �Ի��� 98/12/31���� �Ի��� ����� �޿� = �޿� + ��ձ޿� �����ϱ�
update emp 
      set sale = sale + ( select avg(sale) from emp )
      where job='����' or hiredate <= '98/12/31'; 
select * from emp;
-- job ������ ������� ��� �����ϼ���.
update emp set job='���' where job='����';

-----------------------
-- delete�� 
-- delete from emp where ���ǹ�; 
create table c4emp as select * from emp;
select * from c4emp;
rollback;
-- �޿��� 1000���� �̻��� ��� �����ϱ�
delete from c4emp where sale >= 1000;
-- MGR�� 1008, 1003�� ��� �����ϱ�
delete from c4emp where mgr in ( 1008, 1003 );
-- �达, �̾��� ����� �����ϰ� ��� �����ϱ�
delete from c4emp where not( ename like '��%' or ename like '��%' );
-- ���ʽ��� 100���� �̻��� ��� �����ϱ�
delete from c4emp where comm >= 100;
-- deptno�� 10, 20�� ��� �����ϱ�
delete from c4emp where deptno in ( 10,  20);

drop table emp;
create table emp as select * from c4emp;

select * from emp;

update emp set sale = sale + 500 where job='����';
commit;
rollback;
select * from dept;

insert into emp ( deptno ) values ( 40 ); --  0~100 �Ҽ��� X 500

--- ���� ���� ��� ���� : �����ͺ��̽��� ����� �� �������� ������ �����ϱ� ���ؼ� 
-- �����ͺ��̽� ��ųʸ��� ���Ͽ� �������ǿ� ���� �÷� ������ ����
desc user_constraints;
-- �����ͺ��̽� ��ųʸ��� ���Ͽ� ���������� �������Ǹ�, �������� Ÿ��, ���̺���� ����
-- �ʿ��� �÷��鸸 �����ؼ� ����
select constraint_name, constraint_type, table_name from user_constraints ;
-- ��ü �������ǿ� ���õ� �÷��� ����
select * from user_constraints ;
-- contraint_type  P-primary key, R-foreign key, U-unique, C-check �Ǵ� not null

-- �� ���������� �����-> ����->����
-- ����� ���̺� ������ �� ���������� �����. 1)not null
create table emp03(
   empno number(4) not null,
   ename varchar2(10) not null,
   job varchar2(10),
   deptno number(2)
);
select constraint_name, constraint_type, table_name, search_condition
      from user_constraints
      where table_name in ('EMP03');
drop table emp03;

-- unique ���� ���� : null �ߺ��ؼ� ��� �� �� �ִ�. ��, ������ �����Ͱ� ���� �ȵȴ�. 
create table emp03(
   empno number(4) unique,
   ename varchar2(10) unique,
   job varchar2(10),
   deptno number(2)
);
-- �����ϱ�
-- �������� �����ϱ�
insert into emp03 values( 1001, 'ȫ�浿', '����', 10); 
-- empno�ڷḦ �Է����� �ʰ� �����ϱ� 
insert into emp03( ename, job, deptno )  values ( '�̼���','�λ���',10);
-- ename �Է����� �ʰ� �����ϱ�
insert into emp03( empno, job, deptno) values( 1002, '���', 20);
-- �������� �����ϱ�
-- 1) empno���� ���� ����� ������ ������ �������� ������ ������ ��
insert into emp03 values(1001, '�ڹ���', '����', 10); -- ����
insert into emp03 values(null, '�ڹ���', '����', 10); -- ���� null �ߺ��ؼ� ���� �ȴ�. 
insert into emp03 values(1002, '�ֹ���', '����', 10); -- ���� 
-- 2) ename���� ���� �����
insert into emp03( ename, job, deptno )  values ( '�̼���','�λ���',10);
select * from emp03;

-- ���� ���Ǹ�(Constraint_name)�� ����ڰ� �����ϱ�
select * from user_constraints where table_name in ('EMP03');

create table emp03(
   empno number(4) 
        constraint emp03_empno_uk unique, -- constraint �������Ǹ� ��������, �������Ǹ��� ����� ��� : ���̺��_�÷���_�������Ǿ���
   ename varchar2(10) 
        constraint emp03_ename_uk unique,
   job varchar2(10) 
        constraint emp03_job_nn not null,
   deptno number(2) 
       constraint emp03_deptno_nn_uk not null unique
);

--  primary key �⺻Ű = not null + unique
drop table emp03;
create table emp03(
   empno number(4) 
        constraint emp03_empno_pk primary key,
   ename varchar2(10), 
   job varchar2(10), 
   deptno number(2) 
);
-- �Ǵ� 
create table emp03(
   empno number(4),
   ename varchar2(10), 
   job varchar2(10), 
   deptno number(2),
   constraint emp03_empno_pk primary key(empno)
);
-- �����Է� 2��

-- �����Է� 


create table dept03(
deptno number(4),
dname vachar2(10),
loc varchar2(10),
constraint dept03_deptno_pk primary key(deptno)
);--�θ����̺�
create table empt03(
empno number(4),
ename varchar2(20),
deptno number(4) constraint emp03_deptno_nn not null,
--empno�⺻Ű
constraint emp03_deptno_pk primary key(empno),

);








--dname loc�� ����Ű�� �������� �߰�
alter table dept add constraint dept_dname_pr




cascade ����(�����)
�θ����̺��� �ڷḦ �����ϸ� �ڽĵ� ���� ����� �� �ְ� ���������� ������ִ� ��
�θ����̺��� �ڷḦ �����ϸ� �ڽĵ� ���� �����ȴ�.
drop table emp03;
drop table dept03;

create table emp03(
empno number(4),
ename varchar2(10) constraint emp03_ename_nn not null,
job varchar2(10),
deptno number(2),
constraint emp03_empno_pk primary key(deptno),
constraint emp03_job_uk unique(job),
constraint emp03_deptno_fk foreign key(deptno) references dept03(deptno)
);
create table dept03(
deptno number(2),
dname varchar2(10),
loc varchar2(10), constraint dept03_deptno primary key(deptno)
);
--�������� Ȯ���ϱ�
select * from user_constraints where table_name in ('DEPT03','EMP03');
--�����͸� ������ �� ���� : �θ��ڷ� > �ڽ��ڷ�
insert into emp03 values(1000,'ȫ�浿','���',50); 
--��������. : �ܷ�Ű�����̱� ������ �ڽ� �ڷḣ ������ ������ ���Ἲ ���� ����
--���� ���ִ� ��� 
--1)�θ��ڷ� �ְ� �ڽ� �ڷ� ������ ��
--2)���������� �ӽ÷� ��Ȱ��ȭ�ϱ�(disable constraint �ϱ�)
alter table emp03
disable constraint emp03_deptno_fk;
--��Ȱ��ȭ�� ���������� �ٽ� Ȱ��ȭ�Ϸ���(���� �Է��Ѱ� �����ߵ�...)
delete from emp03;
alter table emp03
enable constraint emp03_deptno_fk;


--cascade �ɼ�
alter table dept03
disable primary key cascade;
--���ӵ� �� ���� disable�� �����

--�ٽ� enable �����
alter table dept03
enable primary key;
alter table emp03
enable constraint emp03_deptno_fk;


select * from course;



-------------------------------
select * from student;
--�������� �ʴ� �л� ã��
select * from student s1, student s2 where;



select member.ename ����̸�,manager.ename ���ӻ���̸�
from emp member full outer join emp manager
on member.mgr =manager.empno;