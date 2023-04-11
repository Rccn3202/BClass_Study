-- 부서 테이블 제거하기

DROP TABLE EMP;

-- 사원 테이블 제거하기

DROP TABLE DEPT;

-- 급여 테이블 제거하기

DROP TABLE SALGRADE;

-- 부서 테이블 제거하기

DROP TABLE EMPLOYEE;

-- 사원 테이블 제거하기

DROP TABLE DEPARTMENT;

-- 급여 테이블 제거하기

DROP TABLE SALGRADE;

-- 부서 테이블 생성하기

CREATE TABLE DEPT(

DEPTNO NUMBER(2) CONSTRAINT PK_DEPT PRIMARY KEY,

DNAME VARCHAR2(14),

LOC VARCHAR2(13) ) ;

?

-- 사원 테이블 생성하기

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

-- 급여 테이블 생성하기

CREATE TABLE SALGRADE(

GRADE NUMBER,

LOSAL NUMBER,

HISAL NUMBER );

?select * from dept;
select * from emp;
select * from salgrade;

-- 사원 테이블에 샘플 데이터 추가하기

INSERT INTO DEPT VALUES(10, '경리부', '서울');

INSERT INTO DEPT VALUES(20, '인사부', '인천');

INSERT INTO DEPT VALUES(30, '영업부', '용인'); 

INSERT INTO DEPT VALUES(40, '전산부', '수원');

?

-- 부서 테이블에 샘플 데이터 추가하기

INSERT INTO EMP VALUES(1001, '김사랑', '사원', 1013, to_date('2007-03-01','yyyy-mm-dd'), 300, NULL, 20);

INSERT INTO EMP VALUES(1002, '한예슬', '대리', 1005, to_date('2007-04-02','yyyy-mm-dd'), 250, 80, 30);

INSERT INTO EMP VALUES(1003, '오지호', '과장', 1005, to_date('2005-02-10','yyyy-mm-dd'), 500, 100, 30);

INSERT INTO EMP VALUES(1004, '이병헌', '부장', 1008, to_date('2003-09-02','yyyy-mm-dd'), 600, NULL, 20);

INSERT INTO EMP VALUES(1005, '신동협', '과장', 1005, to_date('2005-04-07','yyyy-mm-dd'), 450, 200, 30);

INSERT INTO EMP VALUES(1006, '장동건', '부장', 1008, to_date('2003-10-09','yyyy-mm-dd'), 480, NULL, 30);

INSERT INTO EMP VALUES(1007, '이문세', '부장', 1008, to_date('2004-01-08','yyyy-mm-dd'), 520, NULL, 10);

INSERT INTO EMP VALUES(1008, '감우성', '차장', 1003, to_date('2004-03-08','yyyy-mm-dd'), 500, 0, 30);

INSERT INTO EMP VALUES(1009, '안성기', '사장', NULL, to_date('1996-10-04','yyyy-mm-dd'),1000, NULL, 20);

INSERT INTO EMP VALUES(1010, '이병헌', '과장', 1003, to_date('2005-04-07','yyyy-mm-dd'), 500, NULL, 10);

INSERT INTO EMP VALUES(1011, '조향기', '사원', 1007, to_date('2007-03-01','yyyy-mm-dd'), 280, NULL, 30);

INSERT INTO EMP VALUES(1012, '강혜정', '사원', 1006, to_date('2007-08-09','yyyy-mm-dd'), 300, NULL, 20);

INSERT INTO EMP VALUES(1013, '박중훈', '부장', 1003, to_date('2002-10-09','yyyy-mm-dd'), 560, NULL, 20);

INSERT INTO EMP VALUES(1014, '조인성', '사원', 1006, to_date('2007-11-09','yyyy-mm-dd'), 250, NULL, 10);

?

-- 급여 테이블에 샘플 데이터 추가하기

INSERT INTO SALGRADE VALUES (1, 700,1200);

INSERT INTO SALGRADE VALUES (2, 1201,1400);

INSERT INTO SALGRADE VALUES (3, 1401,2000);

INSERT INTO SALGRADE VALUES (4, 2001,3000);

INSERT INTO SALGRADE VALUES (5, 3001,9999);

COMMIT;


select * from emp;
select * from dept;
select * from salgrade;

2.경리부에서 근무하는 사원의 이름과 입사일을 출력하기
select dname, ename, hiredate
from emp, dept
where emp.deptno=dept.deptno and dept.dname='경리부';

3. ANSI JOIN을 사용하여 인천에서 근무하는 사원이름과 급여을 출력하기
select loc, ename, sal
from emp,dept
where emp.deptno=dept.deptno and dept.loc='인천';

4. 사원 테이블과 부서 테이블을 조인하여 사원이름과 부서번호, 부서명을 출력하시오
select ename, dept.deptno,  dname
 from emp,dept
 where emp.deptno=dept.deptno;
 
 5. 경리부 부서 소속 사원의 이름과 입사일을 출력하시오
 select dname, ename,hiredate
 from emp,dept
 where emp.deptno=dept.deptno and dept.dname='경리부';
 
 6. 직급이 과장인 사원이 이름, 부서명을 출력하시오
 select job, ename, dname
 from emp,dept
 where emp.deptno=dept.deptno and emp.job='과장';
 
 7. 직속상관이 감우성인 사원들의 이름과 직급을 출력하시오
 self join
 select e.ename , manager.ename as "직속",e.job
 from emp e, emp manager
 where e.mgr = manager.empno and manager.ename='감우성';
 
 
8. 감우성과 동일한 근무지에서 근무하는 사원의 이름을 출력하시오
1.감우성 근무지
select d.loc
from emp e, dept d
where d.deptno=e.deptno and e.ename='감우성';
2.용인에서 근무하는 사람의 사원명
select d.loc, e.ename
from emp e, dept d
where d.deptno=e.deptno and d.loc='용인'; 
3.'용인' 대신 1번 넣기
select d.loc, e.ename
from emp e, dept d
where d.deptno=e.deptno 
and d.loc=(select d.loc
from emp e, dept d
where d.deptno=e.deptno and e.ename='감우성'
) and e.ename !='감우성'; --감우성 빼고


select * from emp;
--장동건 급여 변경
--부장에서 급여가 제일 많은 사람의 급여로 장동건 부장의 급여를 변경
1.부장에서 급여가 제일 많은 사람의 급여
select sal from emp where job ='부장';
2.장동건 부장의 급여 변경
update emp 
set sal=(select max(sal) from emp where job='부장') 
where ename='장동건';

--수원에서 근무하는 직원 중 제일 먼저 입사한 사람의 이름,입사일
1. 수원에서 근무하는 직원
select * from dept where loc='수원';
2.20,40부서의 입사일 구하기
select * from emp where deptno in (20,40);
3.조합하기
select ename,hiredate from emp 
where deptno in (select deptno from dept where loc='수원')
and hiredate=(select min(hiredate) from emp);
--위에 조건에 만족하는 사람을 삭제. 단, 사장 제외(답:박중훈 부장 삭제)

