-- 사용자 만들기
create user tester1 identified by 1234;
-- 역할(권한) 주기
grant connect, resource to tester1;
-- stmanager 사용자의 DB만들기
create user stmanager identified by 1234;
-- 역할 주기
grant connect, resource to stmanager;

-- 1단계 데이터베이스 만들기 2단계 권한을 부여 받는다.
-- 3단계 테이블 만든다
-- 테이블 만들기
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



create user tester2 identified by 1234;

create user orauser1 identified by 1234;
-- 권한을 부여한다. 
grant create session to orauser1;
--  권한을 제거한다 revoke 권한명나열하고 from 사용자명;
revoke create session from orauser1;

-- 사용자 삭제하기 
drop user orauser1;
drop user tester2;

-- dept테이블 만들기
drop table dept;
create table dept( 
   deptno number(2) not null,
   dname varchar2(14),
   loc varchar2(13),
   primary key(deptno)
);
-- emp 테이블 만들기
create table emp(
   empno number(4) not null,
   ename varchar2(10),
   job varchar2(9),
   mgr number(4),
   hiredate date,
   sale number(7,2),
   comm number(7,2),
   deptno number(2) not null,
   primary key(empno),
   foreign key(deptno) references dept( deptno ) 
);

