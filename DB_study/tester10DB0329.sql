CREATE TABLE DEPT (    

              DEPTNO DECIMAL(2),

              DNAME VARCHAR(14), 

              LOC VARCHAR(13), 

              CONSTRAINT PK_DEPT PRIMARY KEY (DEPTNO));

?

CREATE TABLE EMP (    EMPNO DECIMAL(4),

            ENAME VARCHAR(10),

            JOB VARCHAR(9),

            MGR DECIMAL(4),

            HIREDATE DATE,  

            SAL DECIMAL(7,2), 

            COMM DECIMAL(7,2),

            DEPTNO DECIMAL(2),

            CONSTRAINT PK_EMP PRIMARY KEY (EMPNO),

            CONSTRAINT FK_DEPTNO FOREIGN KEY (DEPTNO) REFERENCES DEPT(DEPTNO));

?

CREATE TABLE SALGRADE ( 

              GRADE number(4),   

              LOSAL number(4),    

              HISAL number(4)  );

?

INSERT INTO DEPT VALUES (10,'ACCOUNTING','NEW YORK');

INSERT INTO DEPT VALUES (20,'RESEARCH','DALLAS');

INSERT INTO DEPT VALUES (30,'SALES','CHICAGO');

INSERT INTO DEPT VALUES (40,'OPERATIONS','BOSTON');

?

INSERT INTO EMP VALUES (7369,'SMITH','CLERK',7902,TO_DATE('17-12-1980','dd-mm-YY'),800,NULL,20);

INSERT INTO EMP VALUES (7499,'ALLEN','SALESMAN',7698,TO_DATE('20-2-1981','dd-mm-YY'),1600,300,30);

INSERT INTO EMP VALUES (7521,'WARD','SALESMAN',7698,TO_DATE('22-2-1981','dd-mm-YY'),1250,500,30);

INSERT INTO EMP VALUES (7566,'JONES','MANAGER',7839,TO_DATE('2-4-1981','dd-mm-YY'),2975,NULL,20);

INSERT INTO EMP VALUES (7654,'MARTIN','SALESMAN',7698,TO_DATE('28-9-1981','dd-mm-YY'),1250,1400,30);

INSERT INTO EMP VALUES (7698,'BLAKE','MANAGER',7839,TO_DATE('1-5-1981','dd-mm-YY'),2850,NULL,30);

INSERT INTO EMP VALUES (7782,'CLARK','MANAGER',7839,TO_DATE('9-6-1981','dd-mm-YY'),2450,NULL,10);

INSERT INTO EMP VALUES (7788,'SCOTT','ANALYST',7566,TO_DATE('13-7-1987','dd-mm-YY')-85,3000,NULL,20);

INSERT INTO EMP VALUES (7839,'KING','PRESIDENT',NULL,TO_DATE('17-11-1981','dd-mm-YY'),5000,NULL,10);

INSERT INTO EMP VALUES (7844,'TURNER','SALESMAN',7698,TO_DATE('8-9-1981','dd-mm-YY'),1500,0,30);

INSERT INTO EMP VALUES (7876,'ADAMS','CLERK',7788,TO_DATE('13-7-1987','dd-mm-YY'),1100,NULL,20);

INSERT INTO EMP VALUES (7900,'JAMES','CLERK',7698,TO_DATE('3-12-1981','%dd-mm-YY'),950,NULL,30);

INSERT INTO EMP VALUES (7902,'FORD','ANALYST',7566,TO_DATE('3-12-1981','dd-mm-YY'),3000,NULL,20);

INSERT INTO EMP VALUES (7934,'MILLER','CLERK',7782,TO_DATE('23-1-1982','dd-mm-YY'),1300,NULL,10);

?

INSERT INTO SALGRADE VALUES (1,700,1200);

INSERT INTO SALGRADE VALUES (2,1201,1400);

INSERT INTO SALGRADE VALUES (3,1401,2000);

INSERT INTO SALGRADE VALUES (4,2001,3000);

INSERT INTO SALGRADE VALUES (5,3001,9999);

--삽입과 삭제, 수정 등은 바로 데이터베이스에 적용되지 않고 트랜젝션이라는 공간에 작업이 이루어진다
--작업공간인 트랜잭션에 자료를 더이상 변경하지 않아도 되면 데이터베이스 안으로 확정 짓는다-> commit
COMMIT; 

select * from dept;
select *from emp;

--1.
select empno, ename, sal from emp where deptno = 10;  
--2.
select ename, hiredate, deptno from emp where empno='7369';
--3
select * from emp where ename='ALLEN';
--4
select ename, deptno,sal from emp where hiredate='83/01/12';





--21
select*from emp where ename like 'S';



-- select문으로 새로운 테이블 만들기
-- 형식 create table 테이블명 as select문 

select * from dept;
-- 새로운 테이블을 만드는데 as ~로써 select * from dept 테이블의 출력결과와 동일하게 만들기 
create table cdept as select * from dept;
create table cemp as select empno, ename, deptno from emp;
select * from cemp;
create table ccemp as select empno, ename, deptno from emp where deptno = 20;
select * from ccemp;

-- 이름 '이''김'씨인 사람만 empno, ename, deptno 컬럼을 c2emp 테이블로 만들기
create table c2emp as select empno, ename, deptno from emp where ename  like '김%' or ename like '이%';
select * from c2emp;

--합집합
select *from ccemp
union all
select *from c2emp;

select *from ccemp
union  --중복제거
select *from c2emp;

--교집합
select * from ccemp
intersect
select * from c2empl

--차집합
select * from ccemp
minus
select * from c2emp;





