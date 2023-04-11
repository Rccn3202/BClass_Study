-- 7장 테이블 구조 생성, 변경, 제거하는 DDL (Database Define Language)-데이터 정의어
-- 목표 테이블 만들고 수정 삭제
-- 스키마 ??
create table emp01(
   empno number(4),
   ename varchar2(14),
   sal number(7,3)
);
desc emp01; -- 테이블의 구조 보기
create table emp02(
   empno number(4) default 1000,
   ename varchar2(14) default '홍길동',
   sal number(7,3)
);
insert into emp01( empno ) values ( 2000 );
insert into emp02( sal ) values ( 500 );
select * from emp01;
select * from emp02;
-- 테이블 구조를 만들기 이름 부서명 입사일-기본값으로 오늘 날짜  테이블명은 emp03
create table emp03(
   ename varchar2(20),
   deptno varchar2(20),
   hiredate date default sysdate
);
-- 데이터 삽입하기 최진영 전산부 2022/10/08  이수민 영업부 2023/03/31
insert into emp03 values( '최진영', '전산부', '2022/10/08');
-- insert into emp03 values( '이수민', '영업부' );에러 
insert into emp03 ( ename, deptno) values( '이수민', '영업부' );
select * from emp03;

-- emp01 테이블안에 birth 컬럼 추가하기
alter table emp01
  add( birth date default sysdate );
-- 테이블 구조보기
desc emp01;
-- sal 컬럼의 자료형을 number(7,3) --> number(8) 변경하기 구조와 제약조건 변경
alter table emp01
  modify( sal number(8) );
--  empno varchar2(10) ename varchar2(20) 로 변경하기 주의 : 데이터가 있으면 구조를 변경할 수 없다. 
alter table emp01
  modify( empno varchar2(10), 
          ename varchar2(20) );
          
select * from emp01;
-- empno의 값을 null로 변경하기
update emp01 set empno = null ;

select * from emp02;
-- sal 컬럼을 지우기
alter table emp02
   drop column sal; 
desc emp02;
select * from emp03;
-- deptno, hiredate 컬럼을 모두 삭제하기 주의 1개의 컬럼씩 지운다. 모든 컬럼은 다 지울 수 없다. 최소 1개는 남겨 두어야 한다. 
alter table emp03
   drop column deptno;
alter table emp03
   drop column hiredate;
alter table emp03
   drop column ename;
-- 레코드수가 아주 많은 경우에 컬럼 변경(추가, 수정, 삭제)할 경우 데이터베이스 속도가 느려집니다.  
-- 그러면 안됩니다. 삭제할 컬럼을 바로 바로 지우는게 아니라 unused로 만들어 두고 나중에 한꺼번에 삭제합니다.
select * from emp02;
alter table emp02
  set unused ( ename ); -- 사용하지 않을 컬럼을 체크하는 것
desc emp02; 
select * from emp02; -- unused된 컬럼은 검색이 되지 않는다.
alter table emp02  -- unused된 컬럼을 완전히 제거한다.
  drop unused columns;
  
-- 테이블명 변경
select * from emp01;
rename emp01 to newEmp01;
desc newEmp01;
select * from newEmp01;

-- 테이블의 구조를 제거하는 것 = 테이블 제거
drop table newEmp01;
drop table emp03;

-- 테이블 속안에 데이터(레코드)를 모두 삭제하기
create table copyEmp as select * from emp;
-- 테이블 속안에 데이터(레코드)를 모두 삭제하기 방법1) delete문으로  방법2) truncate table문  
select * from copyEmp;  
--  방법1) delete문으로 트랜잭션에서 작업이 이루어 지므로 commit 하기 전에 rollback해서 삭제를 취소할 수 있다. 
delete from copyEmp;
rollback; -- 방금전에 했던 명령을 트랜잭션( all or nothing )에서 작업하는 것들을 되돌리기 
-- 트랜잭션은 은행에서 예금 인출하는 것을 예로 들면 예금인출 100% 완료되어야지 성공, 중간에 멈추면 처음으로 되돌아 가는 것  

-- 방법2) truncate table -- 트랜잭션공간 또는 트랜잭션 시스템 구조에서 작업을 하는 것이 아니라 바로 DB테이블에서 지워버림 삭제 취소 안됨
truncate table copyEmp; -- rollback으로 되돌리기 하니깐 안됨. 


-- 데이터 딕셔너리
-- 사용자가 만드는 테이블이 아니고 데이터베이스 서버에서 자동으로 만들고 수정하여 준다. 
-- 사용자는 보기만 한다. 사용자는 데이터베이스 서버안에 들어 있는 정보를 볼때 이용한다. 
-- user_  all_  dba_
-- ~~ 쓴다 - 저장, 삭제, 수정, 삽입 내포 되어 있음
-- ~~ 읽는다 - 보기만 가능함
select table_name from user_tables;
select * from user_tables;
select table_name, max_trans from user_tables;

select * from all_tables;

-- ------------
-- DML - Data Manipulation Language  - 데이터 조작어 웹개발자가 자바코드에 명령어 써 준다. 
-- select insert update delete 
create table dept01(
  deptno number(2),
  dname varchar2(14),
  loc varchar2(13)
);

desc dept01;

insert into dept01 values( 10, '경리부', '서울') ;
-- insert into dept01 values( 20, '인사부','인천' ); 
-- insert시 뒤에 select로 나오는 결과를 차례대로 앞 테이블의 컬럼에 넣어 준다.
insert into dept01(deptno, dname, loc)  select deptno, dname, loc from dept where deptno = 20 ; 
-- select절이 여러행(4행)인 경우 4개의 행이 삽입된다.
insert into dept01(deptno, dname, loc)  select deptno, dname, loc from dept  ; 
-- select절이 여러행(4행)인 경우 4개의 행이 삽입된다.
insert into dept01(deptno, dname, loc)  select deptno, dname from dept  ;   -- error  ', loc' 때문에
insert into dept01(deptno, dname)  select deptno, dname from dept  ;  -- insert문 서브쿼리 이렇게 검색하시면 된다.  
-- 숫자 삽입, 문자 삽입, 날짜 삽입, null 삽입
-- dept01 테이블에 생일 컬럼 date 추가하기 
alter table dept01
  add birth date;
desc dept01;
-- deptno 20 or 30 인 레코드안에 오늘 날짜로 생일을 삽입 넣어 주세요
insert into dept01 ( deptno, dname, loc, birth ) 
       select  deptno, dname, loc, sysdate from dept where deptno in ( 20,30 );
select * from dept01;
-- dname 전산부인 사람의 부서, 부서명, 지역, birth을 1990/12/25로 삽입하기 


select * from dept01;

select * from dept;
-- dept테이블에서 tourism 컬럼을 삭제하기
alter table dept 
   drop column tourism;
-- deptno가 20인 레코드만 검색하기
select * from dept where deptno = 20;



update emp set sal=sal+50 where mgr=7566;
update emp set comm=comm+30 where job in('clerk','manager');
update emp set comm=comm+50 where sal<= (select avg(sal) from emp);
update emp set sal=sal-100 where sal=(select max(sal) from emp);
select ename from emp where sal in (
select max(sal) from emp group by deptno);

update emp set sal=sal-100 where sal in (
select max(sal) from emp group by deptno);
select * from emp;
job 사장 또는 입사일 98/12/31 이전이면 급여+평균급여
update emp set sal=sal+(select avg(sal) from emp) 
where job='president' or hiredate<='81/05/01';
update emp set job='CLERK' where job='CLERK10'; 

--delete
--delete from emp where 조건문
create table c42mp as select * from emp;
select * from c42mp;
delete from c42mp where sal<=800;

delete from c42mp where mgr in(7782, 7499);

delete from c42mp where not(ename like 'A%' or ename like 'E%');

delete from c42mp where comm>=100;

delete from c42mp where deptno in(10,20);

rollback;

select * from emp;
rollback;
commit;
update emp set sal=sal+500 where job='PRESIDENT';


select constraint_name, constraint_type, table_name from user_constraints;






create table emp111(
empno number(4),
ename varchar2(10),
job varchar2(10),
deptno number(2),
constraint emp111_empno_pk primary key(empno)
);

----------------
-- 레코드를 삽입할 때 inset문
-- 형식 insert into 테이블명 (컬럼명1, 컬럼명2 ...) values( '실제값',...);
-- 레코드를 수정할 때 update문
-- 형식 update 테이블명 set 컬러명 = '실제값', ... where 조건절 
select * from emp;
-- mgr 1005인 사람의 급여를 50만원 인상
update emp set sale = sale+50 where mgr=1005;
-- job이 사원, 대리인 사람의 보너스를 30만원 인상해 주세요
update emp set comm = comm + 30 where job in ('사원','대리');
-- 입사일이 05년 이전이 사람의 급여를 100만원 인상하세요.
update emp set sale = sale + 100 where hiredate <= '05/01/01';
-- 평균 급여보다 적게 받은 직원에 대해서 보너스 50만원 지급하세요.
-- 평균 급여?
select avg(sale) from emp;
update emp set comm = comm + 50 where sale <= ( select avg(sale) from emp );
select * from emp;
-- 부서별로 제일 많이 받는 사람은 급여 100만원 삭감하기
-- 1단계 부서별로 제일 많이 받는 사람은?
select ename, deptno, sale from emp where  sale in ( select  max(sale) from emp group by deptno );
select sale from emp where  sale in ( select  max(sale) from emp group by deptno );
update emp
  set sale = sale - 100
  where   sale in ( select  max(sale) from emp group by deptno )  ;
-- job 사장이거나 입사일 98/12/31이전 입사인 사람의 급여 = 급여 + 평균급여 수정하기
update emp 
      set sale = sale + ( select avg(sale) from emp )
      where job='사장' or hiredate <= '98/12/31'; 
select * from emp;
-- job 수습인 사람들을 사원 변경하세요.
update emp set job='사원' where job='수습';

-----------------------
-- delete문 
-- delete from emp where 조건문; 
create table c4emp as select * from emp;
select * from c4emp;
rollback;
-- 급여가 1000만원 이상인 사람 삭제하기
delete from c4emp where sale >= 1000;
-- MGR이 1008, 1003인 사람 삭제하기
delete from c4emp where mgr in ( 1008, 1003 );
-- 김씨, 이씨인 사람을 제외하고 모두 삭제하기
delete from c4emp where not( ename like '김%' or ename like '이%' );
-- 보너스가 100만원 이상인 사람 삭제하기
delete from c4emp where comm >= 100;
-- deptno가 10, 20인 사람 삭제하기
delete from c4emp where deptno in ( 10,  20);

drop table emp;
create table emp as select * from c4emp;

select * from emp;

update emp set sale = sale + 500 where job='사장';
commit;
rollback;
select * from dept;

insert into emp ( deptno ) values ( 40 ); --  0~100 소숫점 X 500

--- 제약 조건 사용 목적 : 데이터베이스를 사용할 때 데이터의 오류를 방지하기 위해서 
-- 데이터베이스 딕셔너리를 통하여 제약조건에 대한 컬럼 구조를 보기
desc user_constraints;
-- 데이터베이스 딕셔너리를 통하여 제약조건의 제약조건명, 제약조건 타입, 테이블명을 보기
-- 필요한 컬럼들만 선택해서 보기
select constraint_name, constraint_type, table_name from user_constraints ;
-- 전체 제약조건에 관련된 컬럼들 보기
select * from user_constraints ;
-- contraint_type  P-primary key, R-foreign key, U-unique, C-check 또는 not null

-- 각 제약조건을 만들기-> 수정->삭제
-- 만들기 테이블 생성할 때 제약조건을 만든다. 1)not null
create table emp03(
   empno number(4) not null,
   ename varchar2(10) not null,
   job varchar2(10),
   deptno number(2)
);
select constraint_name, constraint_type, table_name, search_condition
      from user_constraints
      where table_name in ('EMP03');
drop table emp03;

-- unique 제약 조건 : null 중복해서 들어 갈 수 있다. 단, 동일한 데이터가 들어가면 안된다. 
create table emp03(
   empno number(4) unique,
   ename varchar2(10) unique,
   job varchar2(10),
   deptno number(2)
);
-- 삽입하기
-- 정상으로 삽입하기
insert into emp03 values( 1001, '홍길동', '사장', 10); 
-- empno자료를 입력하지 않고 삽입하기 
insert into emp03( ename, job, deptno )  values ( '이순신','부사장',10);
-- ename 입력하지 않고 삽입하기
insert into emp03( empno, job, deptno) values( 1002, '사원', 20);
-- 오류나게 삽입하기
-- 1) empno오류 나게 만들기 데이터 종류가 유일하지 않으면 오류가 남
insert into emp03 values(1001, '박미주', '부장', 10); -- 오류
insert into emp03 values(null, '박미주', '부장', 10); -- 정상 null 중복해서 들어가도 된다. 
insert into emp03 values(1002, '최미주', '부장', 10); -- 오류 
-- 2) ename오류 나게 만들기
insert into emp03( ename, job, deptno )  values ( '이순신','부사장',10);
select * from emp03;

-- 제약 조건명(Constraint_name)을 사용자가 정의하기
select * from user_constraints where table_name in ('EMP03');

create table emp03(
   empno number(4) 
        constraint emp03_empno_uk unique, -- constraint 제약조건명 제약조건, 제약조건명을 만드는 방법 : 테이블명_컬럼명_제약조건약자
   ename varchar2(10) 
        constraint emp03_ename_uk unique,
   job varchar2(10) 
        constraint emp03_job_nn not null,
   deptno number(2) 
       constraint emp03_deptno_nn_uk not null unique
);

--  primary key 기본키 = not null + unique
drop table emp03;
create table emp03(
   empno number(4) 
        constraint emp03_empno_pk primary key,
   ename varchar2(10), 
   job varchar2(10), 
   deptno number(2) 
);
-- 또는 
create table emp03(
   empno number(4),
   ename varchar2(10), 
   job varchar2(10), 
   deptno number(2),
   constraint emp03_empno_pk primary key(empno)
);
-- 정상입력 2개

-- 오류입력 


create table dept03(
deptno number(4),
dname vachar2(10),
loc varchar2(10),
constraint dept03_deptno_pk primary key(deptno)
);--부모테이블
create table empt03(
empno number(4),
ename varchar2(20),
deptno number(4) constraint emp03_deptno_nn not null,
--empno기본키
constraint emp03_deptno_pk primary key(empno),

);








--dname loc를 복합키로 제약조건 추가
alter table dept add constraint dept_dname_pr




cascade 종속(비권장)
부모테이블의 자료를 변경하면 자식도 같이 변경될 수 있게 제약조건을 만들어주는 것
부모테이블의 자료를 삭제하면 자식도 같이 삭제된다.
drop table emp03;
drop table dept03;

create table emp03(
empno number(4),
ename varchar2(10) constraint emp03_ename_nn not null,
job varchar2(10),
deptno number(2),
constraint emp03_empno_pk primary key(deptno),
constraint emp03_job_uk unique(job),
constraint emp03_deptno_fk foreign key(deptno) references dept03(deptno)
);
create table dept03(
deptno number(2),
dname varchar2(10),
loc varchar2(10), constraint dept03_deptno primary key(deptno)
);
--제약조건 확인하기
select * from user_constraints where table_name in ('DEPT03','EMP03');
--데이터를 삽입할 때 순서 : 부모자료 > 자식자료
insert into emp03 values(1000,'홍길동','사원',50); 
--에러난다. : 외래키관계이기 때문에 자식 자료르 ㄹ먼저 넣으면 무결성 오류 난다
--에러 없애는 방법 
--1)부모자료 넣고 자식 자료 넣으면 됨
--2)제약조건을 임시로 비활성화하기(disable constraint 하기)
alter table emp03
disable constraint emp03_deptno_fk;
--비활성화한 제약조건을 다시 활성화하려면(위에 입력한거 지워야됨...)
delete from emp03;
alter table emp03
enable constraint emp03_deptno_fk;


--cascade 옵션
alter table dept03
disable primary key cascade;
--종속된 것 까지 disable로 만든다

--다시 enable 만들기
alter table dept03
enable primary key;
alter table emp03
enable constraint emp03_deptno_fk;


select * from course;



-------------------------------
select * from student;
--멘토하지 않는 학생 찾기
select * from student s1, student s2 where;



select member.ename 사원이름,manager.ename 직속상관이름
from emp member full outer join emp manager
on member.mgr =manager.empno;