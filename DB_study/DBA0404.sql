select * from course;
select * from student;

desc student;
  alter table student
     add memto_id number(4);
     
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
   
   
   
    --�ػ��л��� ������ ���� �̸��� ���
--������ �л��� ����� ���뼮�̰� �̸����� �����̴�
--self join �̿��ϱ�
--1.�л��� ���� �̸� �˻�
select * from student s1, student s2;
--�����ϱ�
select * from student s1, student s2 where s1.mento_id=s2.stu_id;
select s1.stu_name,s2.stu_name,s2.stu_email from student s1, student s2 where s1.mento_id=s2.stu_id;
--2.���䰡 �����ϴ� ������?
--self join�ϰ� course ���̺� ����
select * from student s1,student s2,course c 
where s1.mento_id=s2.stu_id and s2.cou_id=c.cou_id;
select * from student;
select s.student as "STU_NAME", mento.stu_name as "MENTO_ID"
from student s, student mento
where s.mento_id = mento.stu_id;