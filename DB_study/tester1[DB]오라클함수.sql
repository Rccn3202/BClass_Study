-- ����Ŭ �ֿ� �Լ�
--dual : ����Ŭ���� �������ִ� ���̵�����
--round : �ݿø�
--abs : ����
--trunc : �Ҽ���(�������� �ڸ�)
select round(85/3) from dual;
select * from dual;
select abs(-90) ����, trunc(34.5678,2), mod(90,8) from dual;
--���� ó�� �Լ�
select 'welcome to Oracle', upper('welcome to Oracle'), lower('welcome to Oracle'), initCap('welcome to Oracle')
from dual;
--����
select length('ȫ�浿') from dual; --���ڱ���
select lengthb('ȫ�浿') from dual; --������ ����Ʈ ��('ȫ' �ϳ��� 3����Ʈ)
--4��° ���ں��� 3�� ����
select substr('welcome to Oracle',4,3) from dual;
--TO com �߭�
select substr('welcome to Oracle',9,2) from dual;
select substr('Welcome To Oracle',9,1)|| substr('Welcome To Oracle',12,1)||
substr('Welcome To Oracle',8,1)|| substr('Welcome To Oracle',4,3)
from dual;

select * from student;
--������ �л��� �̸��Ͽ��� @�� ����ϱ�
--1.������ �̸��� ���
select stu_email from student where stu_name='������';
--2. @ ���
select substr(stu_email,5,1) from student where stu_name='������';
select substr(stu_id,2,2) as "�Ϸù�ȣ" from student;

--instr
select instr('�����ͺ��̽�','��',4,1) from dual;
--1������ �ؼ� 2��° ������ '��'ã��
select instr('�л����̵� �л����̵�','��',1,2)from dual;
select * from student;

--stu_id�� 120�� �ִ���?
select stu_id from student;
--lpad : Ư�� ��ȣ�� ä��
select lpad('ȫ�浿',20,'#') from dual;

-- ����Ŭ �ֿ� �Լ� 
select round(85/3) from dual;
select * from dual;
select abs(-90) ���밪, trunc(34.5678, 2), mod( 90, 8)   from dual;
-- ���� ó�� �Լ�
select 'Welcome to Oracle', upper( 'Welcome to Oracle'), lower('Welcome to Oracle'), initCap('WELCOME TO ORACLE')
  from dual;

select length('ȫ�浿') from dual;  -- ������ ���� ���
select lengthb('ȫ�浿') from dual;   -- 'ȫ' - 3����Ʈ ������ ����Ʈ�� ���

select substr( 'Welcome To Oracle', 4, 3) from dual;
-- TO cem
select  substr( 'Welcome To Oracle', 9, 1) || substr( 'Welcome To Oracle', 12, 1) ||
               substr( 'Welcome To Oracle', 8, 1)|| substr( 'Welcome To Oracle', 4, 1)||
               substr( 'Welcome To Oracle', 7, 1)|| substr( 'Welcome To Oracle', 6, 1)
         from dual;

select * from student;
-- �������л��� �̸��Ͽ��� @�� ����ϱ�
-- �������� �̸����� ����ϱ� 
select stu_email from student where stu_name='������'; 
-- ���� select���� Ȱ���ؼ� @�� ����
select    substr( stu_email, 5, 1 )     from student where stu_name='������'; 
-- �л����̵𿡼� 2��° 3��° ���ڸ� �̱� ��� ���ڵ� ��� 01 02 ... 16 
select substr(stu_id, 2, 2) as "�Ϸù�ȣ" from student;

-- instr
select instr('�����ͺ��̽�', '��') from dual;
select instr('�л����̵� �л����̵�', '��', 1, 2) from dual;
select instr('���±��ڴ� ��� ������? 0�� ���´�.','��') from dual;
select * from student;

-- stu_id�� 120�� �ֳ�? 
select instr(stu_id, 116), stu_id  from student; 


select sysdate from dual;
--���� ��¥ �������� ���� ���� ��¥ ���
select to_char(sysdate -1,'yyyy/mm/dd') ����,
    to_char(sysdate,'yyyy/mm/dd') ����,
    to_char(sysdate +1,'yyyy/mm/dd') ����
from dual;
select to_char(sysdate,'yyyy/mm/dd') ������,
to_char(sysdate +14,'yyyy/mm/dd') �ݳ���
from dual;
--round
select round('2023/05/30', 'cc') from dual;














--dept �÷��߰� tourism varchar2(20)
select *from dept;
alter table dept add tourism varchar2(20);
alter table dept add decode varchar2(20);
select loc,decode(loc,'new york','�Ե�Ÿ��','dallas','���̵�','chicago','ȭ��')from dept;
update dept set tourism=decode(loc,'new york','�Ե�Ÿ��','dallas','���̵�','chicago','ȭ��');




select * from student;


 
 
 
 
 
 
 select *from emp;
 --1.��� ��� �޿��ְ��, ������, �Ѿ�, ��ձ޿�
 select deptno, max(sal) "�޿��ְ��", min(sal) "������",
 sum(sal) "�Ѿ�", avg(sal) "��ձ޿�"
 from emp
 group by deptno;
 
 --2.������ ������ �ְ��,������, �Ѿ�, ���
 select job, max(sal) "�޿��ְ��", min(sal) "������",
 sum(sal) "�Ѿ�", avg(sal) "��ձ޿�"
 from emp
 group by job;
 
  
 
 
 
