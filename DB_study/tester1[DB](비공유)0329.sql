select * from emp;
select empno, ename from emp;
select empno as �����ȣ, ename as ����� from emp;
select ename �����,sale �޿�, sale*12 ���� from emp; 
-- ������ ������ 12%�� ����.
select ename �����,sale �޿�, sale*12 ����, sale*12*0.12 ���� from emp; 
-- comm ���ʽ��� 20%�� �����Դϴ�.
select comm * 0.2 ���ʽ����� from emp;
-- �� ���޾� = ���� + ���ʽ� * 5 - ����*0.12 - ���ʽ� *0.2 
select sale + comm * 5 - sale*0.12 - comm * 0.2 �����޾� from emp;

select * from dept;
--  1009 ������ null 1005 98/10/10 700 0 10
insert into emp values( 1009,'������',null,1005,'98/10/10',700, 0,10);   
--  1010 ���ȯ null 1004 98/12/04 250 0 20
insert into emp values( 1010,'���ȯ',null,1004,'98/12/04',700, 0,20);

select * from emp;

select ename, comm, sale*12+comm, nvl(comm, 0), sale*12+nvl(comm, 0) from emp;

select job from emp;
-- nvl( �÷���, �÷��� null�̸� ó���� ��) 
select nvl(job, '������') from emp;
-- ������ ���� null ���ڹ����� 0 

select nvl(comm, 0), sale*12+nvl(comm, 0) "�����޾�" from emp;
-- select nvl(comm, 0), sale*12+nvl(comm, 0) '�����޾�' from emp; ������

select ename || '�� �Ի��Ͻ� ���� ȯ���մϴ�' from emp;
select ename || '��' ||sal|| '���� �������� �����մϴ�' from emp;

--select �μ���ȣ 10 �̸� �μ���ȣ ���
select ename, deptno from emp where deptno=10;

-- ������
-- �޿��� 500�̻��� ��� ����ϱ�
select * from emp where sale > 500;
-- �Ի����� 98�⵵ ������ ����� �����ȣ�� �̸� �Ի��� ����ϱ�
select  empno, ename, hiredate  from emp where hiredate >= '98/10/30';
-- �μ���ȣ�� 10�� ����� �̸��� �μ���ȣ�� ����ϼ���
select  ename, deptno from emp where deptno = 10;
select * from emp where deptno=30;
-- �μ���ȣ�� 10�̰ų� 30�̰� �Ի����� 2005�� ���� �Ի��� ��� ��ü �÷� ����ϱ�
select  * from emp where deptno = 10 or deptno = 30 and hiredate <= '05/01/01' ;
select * from emp where deptno in ( 10,30 ) and hiredate <= '05/01/01' ;
-- �Ŵ����� 1008�� ����� �̸��� �μ� �Ŵ��� ��ȣ ����ϱ�
select deptno, mgr from emp where mgr=1008;
-- empno�� ¦���� ����� �����ȣ�� �̸��� ����� ������
select empno, ename from emp where mod( empno, 2 ) = 0;
-- job�� ����̰ų� �븮�̰ų� ������ ����� �޿��� 300%�� ���ʽ��� �ְ� ����� �̸� ���� �޿� ���ʽ� ���ּ���
select ename, job,  sale, sale * 3 ���ʽ� from emp where job in ( '���','�븮','����');
-- �̸� �达�� ����� ����ϱ� 
select * from emp where ename in ( '����','��켺', '���ȯ');
select * from emp where ename like '��%'; -- % ��ü ����ϴ� ���� 
-- �̸� 2��° ���ڿ� '��'�� �ִ� ��� ã�� '_' �ѱ��ڸ� ����ϴ� ����
select * from emp where ename like '_��_';
-- job�� ������ ���ڿ� '��'���� ������ ��� ã��
select * from emp where job like '_��';
-- '��'�� �ƴ� ��� ����ϱ�
select * from emp where  not (  job like '_��' );
select * from emp where  not   job like '_��' ;
-- �Ի����� '03/01/01~06/12/31'���̿� �Ի��� ���
select * from emp where hiredate >= '03/01/01' and  hiredate <= '06/12/31';
select * from emp where  hiredate  between  '03/01/01'  and '06/12/31';
-- �޿��� 300~800������ ���
select * from emp where sale >= 300 and sale <= 800;
select * from emp where sale between 300 and 800;
-- �޿��� 300~800���̰� �ƴ� ���
select * from emp where  not   sale between 300 and 800;
select * from emp where not sale >= 300 and sale <= 800;
-- ���ʽ��� ���� ���
select * from emp where comm = 0;
-- �Ŵ����� ���� ���
select * from emp where mgr=0;
-- job�� ���� ���
select * from emp where job = null; -- ����� �ȵ�
select * from emp where job is null;
-- job�� �ִ� ���
select * from emp where job != null; -- ����� �ȵ�
select * from emp where not job is null; -- null �� �� �̰� �ݴ�� �ٽ� �̱�
select * from emp where  job  is not null; -- ȿ������ ����. null�ƴ� �� �̱�

select * from emp;
-- �޿��� ���� �޴� ��� ������� ����ϰ� �ʹ�.
select * from emp order by sale desc;
-- �μ���ȣ�� 20, 30�� ����� �޿������� ����ϱ�
select * from emp where deptno in ( 20, 30 ) order by sale desc;
-- ������ ����,������ ����� �Ի��� ������ ����ϱ�
select * from emp where job in ('����','����') order by hiredate asc;
-- �μ���ȣ�� 20, 30�� ����� �޿�����, ���ʽ��������� ����ϱ� order by ó����������,  �ι�°�������� 
select * from emp where deptno in ( 20, 30 ) order by sale desc,  comm desc ;
-- �μ���ȣ�� 20, 30�� ����� �μ���, �����ȣ�� ����ϱ�
select * from emp where deptno in (20,30) order by deptno asc, empno asc;
-- job������ �����ϱ�
select * from emp order by job asc; -- �������� �����ϸ� null�� ���� �������� ���´�.
select * from emp order by job desc; -- �������� �����ϸ� null�� ���� ó���� ���´�.


-- select������ ���ο� ���̺� �����
-- ���� create table ���̺�� as select�� 

select * from dept;
-- ���ο� ���̺��� ����µ� as ~�ν� select * from dept ���̺��� ��°���� �����ϰ� ����� 
create table cdept as select * from dept;
create table cemp as select empno, ename, deptno from emp;
select * from cemp;
create table ccemp as select empno, ename, deptno from emp where deptno = 20;
select * from ccemp;

-- �̸� '��''��'���� ����� empno, ename, deptno �÷��� c2emp ���̺�� �����
create table c2emp as select empno, ename, deptno from emp where ename  like '��%' or ename like '��%';
select * from c2emp;

--������
select *from ccemp
union all
select *from c2emp;

select *from ccemp
union  --�ߺ�����
select *from c2emp;

--������
select * from ccemp
intersect
select * from c2empl

--������
select * from ccemp
minus
select * from c2emp;


use dba;
--����� ����� ��й�ȣ 1234
create user tester10 identified by 1234;

