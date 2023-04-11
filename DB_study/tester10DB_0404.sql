-- �μ� ���̺� �����ϱ�

DROP TABLE EMP;

-- ��� ���̺� �����ϱ�

DROP TABLE DEPT;

-- �޿� ���̺� �����ϱ�

DROP TABLE SALGRADE;

-- �μ� ���̺� �����ϱ�

DROP TABLE EMPLOYEE;

-- ��� ���̺� �����ϱ�

DROP TABLE DEPARTMENT;

-- �޿� ���̺� �����ϱ�

DROP TABLE SALGRADE;

-- �μ� ���̺� �����ϱ�

CREATE TABLE DEPT(

DEPTNO NUMBER(2) CONSTRAINT PK_DEPT PRIMARY KEY,

DNAME VARCHAR2(14),

LOC VARCHAR2(13) ) ;

?

-- ��� ���̺� �����ϱ�

CREATE TABLE EMP( 

EMPNO NUMBER(4) CONSTRAINT PK_EMP PRIMARY KEY,

ENAME VARCHAR2(10),

JOB VARCHAR2(9),

MGR NUMBER(4),

HIREDATE DATE,

SAL NUMBER(7,2),

COMM NUMBER(7,2),

DEPTNO NUMBER(2) CONSTRAINT FK_DEPTNO REFERENCES DEPT);

?

-- �޿� ���̺� �����ϱ�

CREATE TABLE SALGRADE(

GRADE NUMBER,

LOSAL NUMBER,

HISAL NUMBER );

?select * from dept;
select * from emp;
select * from salgrade;

-- ��� ���̺� ���� ������ �߰��ϱ�

INSERT INTO DEPT VALUES(10, '�渮��', '����');

INSERT INTO DEPT VALUES(20, '�λ��', '��õ');

INSERT INTO DEPT VALUES(30, '������', '����'); 

INSERT INTO DEPT VALUES(40, '�����', '����');

?

-- �μ� ���̺� ���� ������ �߰��ϱ�

INSERT INTO EMP VALUES(1001, '����', '���', 1013, to_date('2007-03-01','yyyy-mm-dd'), 300, NULL, 20);

INSERT INTO EMP VALUES(1002, '�ѿ���', '�븮', 1005, to_date('2007-04-02','yyyy-mm-dd'), 250, 80, 30);

INSERT INTO EMP VALUES(1003, '����ȣ', '����', 1005, to_date('2005-02-10','yyyy-mm-dd'), 500, 100, 30);

INSERT INTO EMP VALUES(1004, '�̺���', '����', 1008, to_date('2003-09-02','yyyy-mm-dd'), 600, NULL, 20);

INSERT INTO EMP VALUES(1005, '�ŵ���', '����', 1005, to_date('2005-04-07','yyyy-mm-dd'), 450, 200, 30);

INSERT INTO EMP VALUES(1006, '�嵿��', '����', 1008, to_date('2003-10-09','yyyy-mm-dd'), 480, NULL, 30);

INSERT INTO EMP VALUES(1007, '�̹���', '����', 1008, to_date('2004-01-08','yyyy-mm-dd'), 520, NULL, 10);

INSERT INTO EMP VALUES(1008, '���켺', '����', 1003, to_date('2004-03-08','yyyy-mm-dd'), 500, 0, 30);

INSERT INTO EMP VALUES(1009, '�ȼ���', '����', NULL, to_date('1996-10-04','yyyy-mm-dd'),1000, NULL, 20);

INSERT INTO EMP VALUES(1010, '�̺���', '����', 1003, to_date('2005-04-07','yyyy-mm-dd'), 500, NULL, 10);

INSERT INTO EMP VALUES(1011, '�����', '���', 1007, to_date('2007-03-01','yyyy-mm-dd'), 280, NULL, 30);

INSERT INTO EMP VALUES(1012, '������', '���', 1006, to_date('2007-08-09','yyyy-mm-dd'), 300, NULL, 20);

INSERT INTO EMP VALUES(1013, '������', '����', 1003, to_date('2002-10-09','yyyy-mm-dd'), 560, NULL, 20);

INSERT INTO EMP VALUES(1014, '���μ�', '���', 1006, to_date('2007-11-09','yyyy-mm-dd'), 250, NULL, 10);

?

-- �޿� ���̺� ���� ������ �߰��ϱ�

INSERT INTO SALGRADE VALUES (1, 700,1200);

INSERT INTO SALGRADE VALUES (2, 1201,1400);

INSERT INTO SALGRADE VALUES (3, 1401,2000);

INSERT INTO SALGRADE VALUES (4, 2001,3000);

INSERT INTO SALGRADE VALUES (5, 3001,9999);

COMMIT;


select * from emp;
select * from dept;
select * from salgrade;

2.�渮�ο��� �ٹ��ϴ� ����� �̸��� �Ի����� ����ϱ�
select dname, ename, hiredate
from emp, dept
where emp.deptno=dept.deptno and dept.dname='�渮��';

3. ANSI JOIN�� ����Ͽ� ��õ���� �ٹ��ϴ� ����̸��� �޿��� ����ϱ�
select loc, ename, sal
from emp,dept
where emp.deptno=dept.deptno and dept.loc='��õ';

4. ��� ���̺�� �μ� ���̺��� �����Ͽ� ����̸��� �μ���ȣ, �μ����� ����Ͻÿ�
select ename, dept.deptno,  dname
 from emp,dept
 where emp.deptno=dept.deptno;
 
 5. �渮�� �μ� �Ҽ� ����� �̸��� �Ի����� ����Ͻÿ�
 select dname, ename,hiredate
 from emp,dept
 where emp.deptno=dept.deptno and dept.dname='�渮��';
 
 6. ������ ������ ����� �̸�, �μ����� ����Ͻÿ�
 select job, ename, dname
 from emp,dept
 where emp.deptno=dept.deptno and emp.job='����';
 
 7. ���ӻ���� ���켺�� ������� �̸��� ������ ����Ͻÿ�
 self join
 select e.ename , manager.ename as "����",e.job
 from emp e, emp manager
 where e.mgr = manager.empno and manager.ename='���켺';
 
 
8. ���켺�� ������ �ٹ������� �ٹ��ϴ� ����� �̸��� ����Ͻÿ�
1.���켺 �ٹ���
select d.loc
from emp e, dept d
where d.deptno=e.deptno and e.ename='���켺';
2.���ο��� �ٹ��ϴ� ����� �����
select d.loc, e.ename
from emp e, dept d
where d.deptno=e.deptno and d.loc='����'; 
3.'����' ��� 1�� �ֱ�
select d.loc, e.ename
from emp e, dept d
where d.deptno=e.deptno 
and d.loc=(select d.loc
from emp e, dept d
where d.deptno=e.deptno and e.ename='���켺'
) and e.ename !='���켺'; --���켺 ����


select * from emp;
--�嵿�� �޿� ����
--���忡�� �޿��� ���� ���� ����� �޿��� �嵿�� ������ �޿��� ����
1.���忡�� �޿��� ���� ���� ����� �޿�
select sal from emp where job ='����';
2.�嵿�� ������ �޿� ����
update emp 
set sal=(select max(sal) from emp where job='����') 
where ename='�嵿��';

--�������� �ٹ��ϴ� ���� �� ���� ���� �Ի��� ����� �̸�,�Ի���
1. �������� �ٹ��ϴ� ����
select * from dept where loc='����';
2.20,40�μ��� �Ի��� ���ϱ�
select * from emp where deptno in (20,40);
3.�����ϱ�
select ename,hiredate from emp 
where deptno in (select deptno from dept where loc='����')
and hiredate=(select min(hiredate) from emp);
--���� ���ǿ� �����ϴ� ����� ����. ��, ���� ����(��:������ ���� ����)

