select * from emp;
select empno, ename from emp;
select empno as 사원번호, ename as 사원명 from emp;
select ename 사원명,sale 급여, sale*12 연봉 from emp; 
-- 세금은 연봉에 12%로 낸다.
select ename 사원명,sale 급여, sale*12 연봉, sale*12*0.12 세금 from emp; 
-- comm 보너스의 20%는 세금입니다.
select comm * 0.2 보너스세금 from emp;
-- 총 지급액 = 연봉 + 보너스 * 5 - 연봉*0.12 - 보너스 *0.2 
select sale + comm * 5 - sale*0.12 - comm * 0.2 총지급액 from emp;

select * from dept;
--  1009 유영수 null 1005 98/10/10 700 0 10
insert into emp values( 1009,'유영수',null,1005,'98/10/10',700, 0,10);   
--  1010 김수환 null 1004 98/12/04 250 0 20
insert into emp values( 1010,'김수환',null,1004,'98/12/04',700, 0,20);

select * from emp;

select ename, comm, sale*12+comm, nvl(comm, 0), sale*12+nvl(comm, 0) from emp;

select job from emp;
-- nvl( 컬럼명, 컬럼이 null이면 처리할 값) 
select nvl(job, '미지정') from emp;
-- 미지정 문자 null 숫자미지정 0 

select nvl(comm, 0), sale*12+nvl(comm, 0) "총지급액" from emp;
-- select nvl(comm, 0), sale*12+nvl(comm, 0) '총지급액' from emp; 에러남

select ename || '님 입사하신 것을 환영합니다' from emp;
select ename || '님' ||sal|| '원을 월단위로 지급합니다' from emp;

--select 부서번호 10 이름 부서번호 출력
select ename, deptno from emp where deptno=10;

-- 조건절
-- 급여가 500이상인 사원 출력하기
select * from emp where sale > 500;
-- 입사일이 98년도 이후인 사람의 사원번호와 이름 입사일 출력하기
select  empno, ename, hiredate  from emp where hiredate >= '98/10/30';
-- 부서번호가 10인 사람의 이름과 부서번호를 출력하세요
select  ename, deptno from emp where deptno = 10;
select * from emp where deptno=30;
-- 부서번호가 10이거나 30이고 입사일이 2005년 이전 입사한 사람 전체 컬럼 출력하기
select  * from emp where deptno = 10 or deptno = 30 and hiredate <= '05/01/01' ;
select * from emp where deptno in ( 10,30 ) and hiredate <= '05/01/01' ;
-- 매니저가 1008인 사람의 이름과 부서 매니저 번호 출력하기
select deptno, mgr from emp where mgr=1008;
-- empno가 짝수인 사람의 사원번호와 이름을 출력해 보세요
select empno, ename from emp where mod( empno, 2 ) = 0;
-- job이 사원이거나 대리이거나 과장인 사람의 급여의 300%를 보너스로 주고 출력은 이름 직급 급여 보너스 해주세요
select ename, job,  sale, sale * 3 보너스 from emp where job in ( '사원','대리','과장');
-- 이름 김씨인 사람만 출력하기 
select * from emp where ename in ( '김사랑','김우성', '김수환');
select * from emp where ename like '김%'; -- % 전체 대신하는 문자 
-- 이름 2번째 글자에 '지'가 있는 사람 찾기 '_' 한글자만 대신하는 문자
select * from emp where ename like '_지_';
-- job의 마지막 글자에 '장'으로 끝나는 사람 찾기
select * from emp where job like '_장';
-- '장'이 아닌 사람 출력하기
select * from emp where  not (  job like '_장' );
select * from emp where  not   job like '_장' ;
-- 입사일이 '03/01/01~06/12/31'사이에 입사한 사람
select * from emp where hiredate >= '03/01/01' and  hiredate <= '06/12/31';
select * from emp where  hiredate  between  '03/01/01'  and '06/12/31';
-- 급여가 300~800사이인 사람
select * from emp where sale >= 300 and sale <= 800;
select * from emp where sale between 300 and 800;
-- 급여가 300~800사이가 아닌 사람
select * from emp where  not   sale between 300 and 800;
select * from emp where not sale >= 300 and sale <= 800;
-- 보너스가 없는 사람
select * from emp where comm = 0;
-- 매니저가 없는 사람
select * from emp where mgr=0;
-- job이 없는 사람
select * from emp where job = null; -- 출력이 안됨
select * from emp where job is null;
-- job이 있는 사람
select * from emp where job != null; -- 출력이 안됨
select * from emp where not job is null; -- null 인 것 뽑고 반대로 다시 뽑기
select * from emp where  job  is not null; -- 효율성이 좋다. null아닌 것 뽑기

select * from emp;
-- 급여를 많이 받는 사람 순서대로 출력하고 싶다.
select * from emp order by sale desc;
-- 부서번호가 20, 30인 사람의 급여역순을 출력하기
select * from emp where deptno in ( 20, 30 ) order by sale desc;
-- 직무가 부장,과장인 사람의 입사일 순으로 출력하기
select * from emp where job in ('부장','과장') order by hiredate asc;
-- 부서번호가 20, 30인 사람의 급여역순, 보너스역순으로 출력하기 order by 처음정렬조건,  두번째정렬조건 
select * from emp where deptno in ( 20, 30 ) order by sale desc,  comm desc ;
-- 부서번호가 20, 30인 사람의 부서순, 사원번호순 출력하기
select * from emp where deptno in (20,30) order by deptno asc, empno asc;
-- job순으로 정렬하기
select * from emp order by job asc; -- 오름차순 정렬하면 null이 제일 마지막에 나온다.
select * from emp order by job desc; -- 내림차순 정렬하면 null이 제일 처음에 나온다.


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


use dba;
--사용자 만들기 비밀번호 1234
create user tester10 identified by 1234;

