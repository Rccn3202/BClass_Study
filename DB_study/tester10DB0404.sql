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

-- 테이블안에 데이터를 넣기(삽입한다)
insert into course values( 10, '모바일','성윤정');
insert into course values( 20, '모바일','성윤정');
insert into course values( 30, '윈도우','황연주');
insert into course values( 40, '웹표준','전혜영');

insert into student values( 101, '문종헌',24, 'moon@nate.com', 10, 'M');
insert into student values( 102, '오한솔',22, 'five@nate.com', 20, 'M');
INSERT INTO STUDENT VALUES(103,'제용석', 22,'again@nate.com',20,'M');
INSERT INTO STUDENT VALUES(104,'정국철', 22,'cook@nate.com',20,'M');
INSERT INTO STUDENT VALUES(105,'박홍진', 24,'red@nate.com',10,'M');
INSERT INTO STUDENT VALUES(106,'김현우', 21,'kim@nate.com',20,'M');
INSERT INTO STUDENT VALUES(107,'박시준', 22,'season@nate.com',20,'M');
INSERT INTO STUDENT VALUES(108,'김준형', 27,'brother@nate.com',10,'M');
INSERT INTO STUDENT VALUES(109,'문혜진', 22, NULL,20,'F');
INSERT INTO STUDENT VALUES(110,'박기석', 34,'flag@nate.com',10,'M');
INSERT INTO STUDENT VALUES(111,'윤효선', 24,'od@nate.com',30,'F');
INSERT INTO STUDENT VALUES(112,'안창범', 34,'window@nate.com',30,'M');
INSERT INTO STUDENT VALUES(113,'공지훈', 28, NULL, 10,'M');
INSERT INTO STUDENT VALUES(114,'이봉림', 29,'bbong@nate.com',10,'M');
INSERT INTO STUDENT VALUES(115,'안창범', 24,'chang@nate.com',30,'M');
INSERT INTO STUDENT VALUES(116,'장희성', 34,'shine@nate.com',10,'M');

-- 테이블안에 데이터를 검색하기
select * from course;
select * from student;



--선생님 이름 순으로 정렬하기
select stu_id,stu_name, s.cou_id,cou_name,tea_name
from student s, course c
where s.cou_id=c.cou_id
order by tea_name asc;

--학생 나이가 가장 많은 사람이 수강한 과목은?
select * from student s, course c where s.cou_id=c.cou_id and s.age=(select max(s.age) from student s, course c);

--모바일 강좌 수강하느 사람 인원수

--남학생,성윤정 선생님 과목을 수강하는 학생


--couse 테이블에 컬럼 추가하기 tea_id
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
     
-- 문제) 해당학생의 멘토명과 멘토의 이메일, 멘토수강과목을 출력하시오 
-- 예) 문종헌 멘토는 제용석이고, 멘토이메일은 again@nate.com 멘토수강과목 : 모바일 
 -- 1단계 학생의 멘토이름 검색
  select * from student s1, student s2;
   select * from student s1, student s2 where s1.memto_id = s2.stu_id;
   select s1.stu_name, s2.stu_name, s2.stu_email from student s1, student s2 where s1.memto_id = s2.stu_id;
 -- 2단계 멘토가 수강하는 과목은?
 -- self join하고 course 테이블도 조인
   select * from student s1, student s2, course c 
          where s1.memto_id = s2.stu_id and s2.cou_id = c.cou_id;
 -- 원하는 컬럼 써주기
   select s1.stu_name, s2.stu_name, s2.stu_email, c.cou_name from student s1, student s2, course c 
          where s1.memto_id = s2.stu_id and s2.cou_id = c.cou_id;


select *from course;
--2.선생님들 이름별로 수강하는 학생 학번,이메일,멘토명
 -- 1단계 학생의 멘토이름 검색
  select * from student s, course c;
   select * from course c,student s  where s.cou_id = c.cou_id;
   --학생,학생멘토,선생님 연결
   select * from course c,student s1, student s2 where c.cou_id=s1.cou_id and s1.stu_id=s2.memto_id; 
   select c.tea_name, s1.stu_id,s1.stu_name, s1.stu_email, s2.memto_id, s2.stu_name, s2.stu_email, s2.sex from course c,student s1, student s2 where c.cou_id=s1.cou_id and s1.stu_id=s2.memto_id
   order by c.tea_name asc; 

select  c.tea_name,s.stu_name, s.stu_id, s.stu_email,s. 
 from student s, course c where s.cou_id = c.cou_id;
  -- 2단계 멘토가 수강하는 과목은?
 -- self join하고 course 테이블도 조인
   select * from student s1, student s2, course c 
          where s1.memto_id = s2.stu_id and s2.cou_id = c.cou_id;
 


select * from student;
select s.student as "STU_NAME", memto.stu_name as "MEmTO_ID"
from student s, student memto
where s.memto_id = memto.stu_id;




-------------------------------------------

select member.ename 사원이름, manager.ename 직속상관이름
   from emp member left outer join emp manager
   on member.mgr = manager.empno;
