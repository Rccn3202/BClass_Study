--3단계 테이블을 만든다
--테이블 만들기 (1. 구조를 만든다(표 모양,내용등등)
create table course(
cou_id number(4) not null,
--varchar는 가변형 문자. 20 넘으면 알아서 추가됨 21,22...
cou_name varchar(20) null,
tea_name varchar(20) null,
--primary key: (기본키)표를 나타낼 떄 대표가 되는 컬럼(과정번호,학생번호,주빈번호..)
primary key(cou_id)
);
--course라는 테이블 생긴다

--student 테이블 만든다
create table student(
stu_id number(4) not null,
stu_name varchar(20) null,
age number(4) null,
stu_email varchar2(20) null,
cou_id number(4) not null,
sex char(1) default 'M',
primary key(stu_id),
--foreign key : (외래키) 다른 테이블의 기본키와 관계를 맺는 키(선생테이블 과정명 10과 학생테이블 과정명 10 연결)
--foreign key(컬럼명) references 다른테이블명(다른테이블의 컬럼명)
foreign key(cou_id) references course(cou_id)
);

--테이블 안에 데이터 넣는다
insert into course values(10, '모바일','성윤정');
insert into course values(20, '자바','김혜경');
insert into course values(30,'윈도우','황연주');
insert into course values(40,'웹표준','전혜영');
--101,102.. primary key는 한번만 되므로 다시 입력 불가
insert into student values(101,'문종헌',24,'aaa@aa',10,'M');
insert into student values(102,'오종헌',22,'bbb@aa',20,'M');
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


--확인: 테이블 안에 데이터를 검색하기
select *from course;
select *from student;

--새 테이블 만들기
create table dept01(
deptno number(4),
dname varchar2(10),
loc varchar2(9)
);
--테이블 구조 변경하기 dname varchar(10) -> dname varchar(30)
--데이터 손실이 발생할 수 있음. 될 수 있으면 안하는 것이 좋다
alter table dept01(
modify(dname varchar2(30)); --컬럼 변경

alter table dept01
add(etc varchar2(50)); --컬럼 추가

alter table dept01
drop(etc); --컬럼 삭제

--테이블 구조 보기
desc dept01;

--테이블 이름 변경
rename dept01 to dept02;

--테이블 안에 레코드(=로우=행(한줄 데이터)) 모두 삭제
truncate table student;

--테이블의 레코드와 구조를 모두 삭제하기
drop table student;

--DCL
--create user test2 identified by 1234; -> 관리자가 아닌 사용자(권한없음)가 다른 사용자를 만들 수 없다
--DBA에서 만들어야한다

--ppt28 예제
create table dept(
--기본키는 반드시 not null 넣어주어야한다
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
sal number(7,2), --정수 7자리, 소수점 2자리
comm number(7,2),
deptno number(2) not null,
primary key(empno),
foreign key(deptno) references dept(deptno)
);

select *from dept;
select *from emp;

drop table dept02;
drop table emp02;


--dept에 데이터 삽입하기
insert into dept(deptno,dname,loc)
values(10,'경리부','서울');
--into 다음에 입력한 순서대로 들어간다
insert into dept(dname,loc,deptno)
values('인사부','인천',20);
--간략하게 추가하기(초기에 입력한 순서대로 들어간다)
insert into dept values(30,'영업부','용인');
--간략하게 쓸 때 순서가 바뀌면 오류난다
--insert into dept values('영업부','용인',10);

--dept의 모든 컬럼 선택
select * from dept;
--deptno만 보기
select deptno from dept;

INSERT INTO EMP (empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES(1001, '김사랑', '사원', 1013, to_date('2007-03-01','yyyy-mm-dd'), 300, NULL, 20);
INSERT INTO EMP (empno,ename,job,mgr,hiredate,sal,comm,deptno)VALUES(1002, '한예슬', '대리', 1005, to_date('2007-04-02','yyyy-mm-dd'), 250, 80, 30);
INSERT INTO EMP (empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES(1003, '오지호', '과장', 1005, to_date('2005-02-10','yyyy-mm-dd'), 500, 100, 30);
INSERT INTO EMP (empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES(1004, '이병헌', '부장', 1008, to_date('2003-09-02','yyyy-mm-dd'), 600, NULL, 20);
INSERT INTO EMP (empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES(1005, '신동협', '과장', 1005, to_date('2005-04-07','yyyy-mm-dd'), 450, 200, 30);
INSERT INTO EMP (empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES(1006, '장동건', '부장', 1008, to_date('2003-10-09','yyyy-mm-dd'), 480, NULL, 30);
INSERT INTO EMP (empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES(1007, '이문세', '부장', 1008, to_date('2004-01-08','yyyy-mm-dd'), 520, NULL, 10);
INSERT INTO EMP (empno,ename,job,mgr,hiredate,sal,comm,deptno)  VALUES(1008, '감우성', '차장', 1003, to_date('2004-03-08','yyyy-mm-dd'), 500, 0, 30);
INSERT INTO EMP (empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES(1009, '안성기', '사장', NULL, to_date('1996-10-04','yyyy-mm-dd'),1000, NULL, 20);
INSERT INTO EMP  (empno,ename,job,mgr,hiredate,sal,comm,deptno)VALUES(1010, '이병헌', '과장', 1003, to_date('2005-04-07','yyyy-mm-dd'), 500, NULL, 10);
INSERT INTO EMP(empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES(1011, '조향기', '사원', 1007, to_date('2007-03-01','yyyy-mm-dd'), 280, NULL, 30);
INSERT INTO EMP(empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES(1012, '강혜정', '사원', 1006, to_date('2007-08-09','yyyy-mm-dd'), 300, NULL, 20);
INSERT INTO EMP(empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES(1013, '박중훈', '부장', 1003, to_date('2002-10-09','yyyy-mm-dd'), 560, NULL, 20);
INSERT INTO EMP (empno,ename,job,mgr,hiredate,sal,comm,deptno)VALUES(1014, '조인성', '사원', 1006, to_date('2007-11-09','yyyy-mm-dd'), 250, NULL, 10);

select * from emp;
select job from emp;
--중복된 내용을 1개만 출력하기, 중복제거 (과장 2명이면 빼기)
select distinct job from emp;












select * from student;
-- 1) 수강 코드(cou_id)가 10이면 '자바'과정 20이면 '자바스크립트'과정 30이면 '데이터베이스'과정 40이면 '스프링'과정 이외는 '기본'과정
select distinct cou_id,
    case when cou_id=10 then '자바'
        when cou_id=20 then '자바스크립트'
        when cou_id=30 then '데이터베이스'
        when cou_id=40 then '스프링'
        else '기본'
    end 과정명
from student order by cou_id;

-- 2) 이름이 '박'씨이고 나이가 25살 이상인 사람은 'A강의실로 오세요' '오'씨이고 나이가 25살 이하이면 'B강의실로 오세요'
select stu_name,
    case when (stu_name like ('박%') and age >= 25) then 'A강의실로 오세요'
        when (stu_name like ('오%') and age <= 25) then 'B강의실로 오세요'
    end 강의실
from student;

-- 3) 성별(sex)가 남자(M)이면 '남자화장실은 1층' 여자('F')이면 '여자화장실은 2,3층'으로 출력하기
select sex,
    case when (sex = 'M') then '남자화장실은 1층'
        when (sex = 'F') then '여자화장실은 2,3층'
    end 화장실
from student;

select * from emp;
select count(comm) from emp;
select count(*) from emp;
select sum(sal), avg(sal),max(sal) from emp;
select count(distinct job) from emp;
-급여 560보다 많이 받는 사람 이름, 급여
select ename, sal  from emp where sal>=464;
select round(avg(sal)) from emp;
select ename, sal  from emp where sal>=(select round(avg(sal)) from emp);

select * from student;
select stu_name, age from student where age<=(select round(avg(age)) from student);
--cou_id별로 나이의 평균, 최대 나이 구하기
select cou_id trunc(avg(age)),max(age) from student group by cou_id order by cou_id asc;












