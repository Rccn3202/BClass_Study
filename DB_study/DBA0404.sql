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
   
   
   
    --해상학생의 멘토명과 멘토 이메일 출력
--문종헌 학생의 멘토는 제용석이고 이메일은 ㅇㅇ이다
--self join 이용하기
--1.학생의 멘토 이름 검색
select * from student s1, student s2;
--연결하기
select * from student s1, student s2 where s1.mento_id=s2.stu_id;
select s1.stu_name,s2.stu_name,s2.stu_email from student s1, student s2 where s1.mento_id=s2.stu_id;
--2.멘토가 수강하는 과목은?
--self join하고 course 테이블도 조인
select * from student s1,student s2,course c 
where s1.mento_id=s2.stu_id and s2.cou_id=c.cou_id;
select * from student;
select s.student as "STU_NAME", mento.stu_name as "MENTO_ID"
from student s, student mento
where s.mento_id = mento.stu_id;