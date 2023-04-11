-- 테이블 만들기
create table course(
   cou_id  number(4) not null, 
   cou_name varchar(20) null, 
   Tea_name varchar(20) null,
   primary key(cou_id) 
);

create table student(
   stu_id number(4) not null,
   stu_name varchar(20) null,
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

create table dept01(
   deptno number(4),
   dname varchar2(10),
   loc varchar2(9)
);
-- 테이블 구조 변경하기
alter table dept01
  modify( dname varchar2(30) ); -- 컬럼 변경

alter table dept01
  add( etc varchar2(50) ); -- 컬럼 추가

alter table dept01
  drop( etc ); -- 컬럼 삭제하기
  
-- 테이블의 구조 보기  
desc dept01;

-- 테이블 이름 변경하기
rename dept01 to dept02;

-- 테이블안에 레코드=로우=행(한줄 데이터) 모두 삭제하기
truncate table student;
select * from student;

-- 테이블의 레코드와 구조를 모두 삭제하기
drop table student;   
--  관리자가 아닌 사용자가 다른 사용자를 만들 수 없다. 
create user tester2 identified by 1234; -- 에러 

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

-- dept 데이터 삽입하기
insert into dept( deptno, dname, loc) 
          values( 10, '경리부', '서울');
insert into dept( dname, loc, deptno)
          values( '인사부', '인천', 20);
insert into dept values( 30, '영업부', '용인'); -- dept( deptno, dname, loc)  테이블의 컬럼 구조 순서대로 
-- insert into dept values( '전산부', '수원', 40 ); -- 안됨
insert into dept values( 40, '전산부', '수원' );

select * from dept;
select deptno from dept;
select dname from dept;

INSERT INTO  emp ( empno, ename,  job, mgr, hiredate, sale, comm, deptno )
                       VALUES (1001, '김사랑', '사원', 1013, '2007/03/10',  300, 0,20);   
INSERT INTO  emp ( empno, ename,  job, mgr, hiredate, sale, comm, deptno )
                       VALUES (1002, '한예슬', '대리', 1005, '2007/04/02',  250, 6,30);                       
INSERT INTO  emp ( empno, ename,  job, mgr, hiredate, sale, comm, deptno )
                       VALUES (1003, '오지호', '과장', 1005, '2005/02/10',  500, 100,30);                     
INSERT INTO  emp ( empno, ename,  job, mgr, hiredate, sale, comm, deptno )
                       VALUES (1004, '이병헌', '부장', 1008, '2003/09/02',  600, 0,20);                        
INSERT INTO  emp ( empno, ename,  job, mgr, hiredate, sale, comm, deptno )
                       VALUES (1005, '신동엽', '과장', 1005, '2005/04/07',  450, 200,30);   
INSERT INTO  emp ( empno, ename,  job, mgr, hiredate, sale, comm, deptno )
                       VALUES (1006, '장동건', '부장', 1008, '2004/01/08',  520, 0,20);                         
INSERT INTO  emp ( empno, ename,  job, mgr, hiredate, sale, comm, deptno )
                       VALUES (1007, '김우성', '차장', 1008, '2005/03/08',  500, 0,30);                    
INSERT INTO  emp ( empno, ename,  job, mgr, hiredate, sale, comm, deptno )
                       VALUES (1008, '안성기', '사장', 0, '1996/04/07',  1000, 0,30); 
                       
select * from emp;      
select job from emp;
-- 중복된 내용을 1개만 출력하기  중복제거
select distinct job from emp;
-- 일기내용                                                        일정정보
-- 날짜            일기메모                날씨                 날짜           시간        일정내용
 2023-3-27    과제물이 너무 많음   맑음                     2023-3-27   11          영어 스터디
 2023-3-28    하루만 참자            흐림                  2023-3-27   15          자바 스터디 
 2023-3-29    오늘 복권 당첨        비                     2023-3-29    9          은행 방문

create table weather(
    we_date date not null,
    we_memo varchar2(50),
    we_text varchar2(20),
    primary key( we_date)
);
create table schedule(
    sc_date date not null,
    sc_time number(2),
    sch_memo varchar2(50),
    foreign key( sc_date) references weather(we_date)
);

insert into weather values( '2023-3-27', '과제물이 너무 많음','맑음');
insert into weather values( '2023-3-28', '하루만 참자','흐림');
insert into weather values( '2023-3-29', '오늘 복권 당첨','비');
select * from weather;
insert into schedule values('2023-3-27', 11, '영어스터디');
insert into schedule values('2023-3-27', 15, '자바스터디');
insert into schedule values('2023-3-29', 9, '은행방문');
select * from schedule;