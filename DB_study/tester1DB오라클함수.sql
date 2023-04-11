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


-- 조건절
-- 급여가 500이상인 사원 출력하기
select * from emp where sale >= 500;
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


-- 오라클 주요 함수 
select round(85/3) from dual;
select * from dual;
select abs(-90) 절대값, trunc(34.5678, 2), mod( 90, 8)   from dual;
-- 문자 처리 함수
select 'Welcome to Oracle', upper( 'Welcome to Oracle'), lower('Welcome to Oracle'), initCap('WELCOME TO ORACLE')
  from dual;

select length('홍길동') from dual;  -- 문자의 길이 출력
select lengthb('홍길동') from dual;   -- '홍' - 3바이트 문자의 바이트수 출력

select substr( 'Welcome To Oracle', 4, 3) from dual;
-- TO cem
select  substr( 'Welcome To Oracle', 9, 1) || substr( 'Welcome To Oracle', 12, 1) ||
               substr( 'Welcome To Oracle', 8, 1)|| substr( 'Welcome To Oracle', 4, 1)||
               substr( 'Welcome To Oracle', 7, 1)|| substr( 'Welcome To Oracle', 6, 1)
         from dual;

select * from student;
-- 문종헌학생의 이메일에서 @을 출력하기
-- 문종헌의 이메일을 출력하기 
select stu_email from student where stu_name='문종헌'; 
-- 위에 select문을 활용해서 @를 추출
select    substr( stu_email, 5, 1 )     from student where stu_name='문종헌'; 
-- 학생아이디에서 2번째 3번째 숫자를 뽑기 모든 레코드 출력 01 02 ... 16 
select substr(stu_id, 2, 2) as "일련번호" from student;

-- instr
select instr('데이터베이스', '이') from dual;
select instr('학생아이디 학생아이디', '아', 1, 2) from dual;
select instr('없는글자는 어떻께 나오나? 0이 나온다.','박') from dual;
select * from student;

-- stu_id가 116이 있나? 
select instr(stu_id, 116), stu_id  from student; 

select lpad('홍길동', 20, '#') from dual;
select rpad('홍길동', 20, '#') from dual;

select sysdate, to_char( sysdate, 'YYYY/MM/DD AM HH:MI:SS')  from dual;
select to_char(123000, 'L99,999') from dual; -- #######출력됨 왜? 9의 갯수가 5개이고 실제 자료은 6개 
select to_char(123000, 'L999,999') from dual;
select to_char(123000, 'L9,999,999') from dual; -- w123,000  9은 자료가 들어오면 자료 표시 안들어오면 공백으로 표시
select to_char(12, 'L99,999') from dual;
select to_char(123000, 'L000,000') from dual;
select to_char(123000, 'L0,000,000') from dual; -- w0,123,000  0은 자료가 들어오면 자료 표시 안들어오면 0으로 표시
select to_char(12.3456, 'L00,000.00') from dual; -- w00,012.35 
select to_char(12.3456, 'L00,000.000000') from dual;

select * from emp;

insert into emp 
    values(1011, '박수민', null, 1003, to_date(230329, 'YY/MM/DD' ) , 850, 0, 10);

-- 아래와 같은 데이터를 삽입하기    
1012, '차영주', null, 1005, '220515', 740, 0, 10

insert into emp 
    values( 1012, '차영주', null, 1005, to_date('220515', 'yy/mm/dd') , 740, 0, 10 );

-- 2007년 4월 2일에 입사한 사람 검색하기
select * from emp where hiredate = '07/04/02';
-- 입사일이 4월달인 사람만 검색하기
select * from emp where to_char( hiredate, 'MM')='04';
-- 입사일 년도가 07년인 사람만 검색하기
select * from emp where to_char( hiredate, 'YY')='07';
-- MGR의 숫자를 1013 --> 날짜 처럼 바꾸기 10/13
select mgr,  to_date( mgr, 'mm/dd') from emp where mgr != 0;
-- 입사일 날짜--> 숫자로 만드세요 
-- select to_number('070310', '999999')+5000 from dual; 
-- 날짜 --> 문자 --> 숫자 
select to_number( to_char( hiredate,'yyyymmdd'), '99999999' ) from emp;
-- 1단계 날짜->문자
select  to_char( hiredate,'yyyymmdd') from emp; 
-- 문자는 왼쪽에서 오른쪽으로 들어갑니다. 그래서 왼쪽 정렬한 것처럼 보임
-- 2단계 문자-> 숫자
select to_number( to_char( hiredate,'yyyymmdd'), '99999999' ) from emp; 
-- 숫자는 오른쪽에서 왼쪽으로 들어갑니다. 그래서 오른쪽 정렬한 것처럼 보임
-- 날짜함수
-- 오늘 날짜 
select sysdate from dual;
--오늘 날자를 기준으로 어제와 내일 날짜 계산하기
select to_char( sysdate -1, 'yyyy/mm/dd') 어제,
       to_char( sysdate, 'yyyy/mm/dd') 오늘,
       to_char( sysdate + 1, 'yyyy/mm/dd') 
       from dual;
-- 도서대출  대출일  오늘 반납일 14일 이후
select to_char(sysdate, 'yyyy/mm/dd') 대출일,
       to_char(sysdate + 14, 'yyyy/mm/dd') 반납일
       from dual;
-- Round
select round( to_date('2023/06/16', 'yyyy/mm/dd'), 'MM') from dual;
-- 입사일이 달의 첫날로 셋팅하기
select to_char( hiredate, 'yyyy/mm/dd') 입사일,
       to_char( trunc(hiredate, 'MONTH'), 'yyyy/mm/dd') 월급계산일,  -- 특정한 날짜를 달을 기준으로 버리기
       to_char( trunc(hiredate, 'YEAR'), 'yyyy') 입사한년도
       from emp;
-- 두날짜 사이의 간격을 구하는 Months_between 함수
-- 형식 Months_between(date1, date2) ;
-- 2023/12/31 2023/03/30 몇개월 남아 있지?
select trunc( months_between( '2023/12/31', sysdate ) ) 
       from dual;
-- 오늘날짜 - 입사일 = 몇개월
select ename,trunc( months_between( sysdate, hiredate ) ) 근무개월수
       from emp;
-- 입사일에서 5년후 날짜출력
select hiredate 입사일 , add_months( hiredate, 60 ) as "5년후"
       from emp;       
-- 해당요일의 가장 가까운 날짜를 반환하는 next_day함수
-- next_day(날짜, 요일);
-- 이번주 일요일 날짜?
select next_day( sysdate, 1 ) from dual;
-- 이번달 마지막 날짜는?
select last_day( sysdate ) from dual;
-- 입사일의 마지막 날짜는?
select last_day( hiredate) from emp;
-- NVL 함수 
-- 숫자인 경우 입력을 안하면 null으로 문자인 경우 입력을 안하여 null로 날짜인 경우 입력을 안하면 null으로 됨
--  nvl( 컬럼명, 기본값) 컬럼에 값이 있으면 컬럼값을 출력 null이면 기본값 출력
-- 삽입하기 입사일이 0인 경우 삽입하기
select * from emp;
insert into emp( empno, ename, mgr, sale, deptno )
            values( 1013, '오수정', 1005, 400, 10) ; 
-- 수정하기 1003을 comm을 0으로 sale-100 변경하기
update emp set comm = 0 where empno=1003;
update emp set sale=sale-100  where empno=1003;
-- job null인 경우 수습사원
select job, nvl( job, '수습사원') from emp;
-- update문을 이용해서 job null인 경우 수습사원이라고 변경하기
update emp set job = nvl( job, '수습'); 
select * from emp;
-- 입사일이 null것을 오늘 날짜로 업데이트 시키세요.
update emp set hiredate = nvl( hiredate, sysdate );
-- comm null인 경우 50으로 기본으로 업데이트 시키세요
update emp set comm = nvl( comm, 50);

create table  c3emp as select * from emp;

-- NULLIF함수는 두표현식을 비교하여 동일한 경우에는 NULL로 반환하고, 아니면 첫번째 표현식을 반환합니다.
select nullif( 'a','a' ) from dual; -- 'a','a' 동일하므로 null반환
select nullif( 'a','b' ) from dual;

-- coalesce( comm, sale, 0) 함수
-- 1) 경우  0 300 -> 0  2) 100 null -> 100 3) null 400 -> 400 4) null null -> 0
select ename, sale, comm, coalesce( comm, sale, 0) from emp;
insert into emp( empno, ename, mgr, sale, deptno )
            values( 1014, '김수정', 1005, 400, 10) ;
insert into emp( empno, ename, mgr, sale, deptno )
            values( 1015, '박수정', 1005, 600, 10) ;    
insert into emp( empno, ename, mgr, comm, deptno )
            values( 1016, '정수정', 1005, 100, 10) ;  
insert into emp( empno, ename, mgr, deptno )
            values( 1017, '홍수정', 1005, 10) ;             
select * from emp;

-- DECODE함수 switch~case문 오라클에서만 사용하는 함수 
-- 형식 decode( 표현식, 조건식1,  결과1,
--                     조건식2, 결과2,
--                     조건식3, 결과3,
--                      기본결과 ); 
select ename, deptno, decode( deptno, 10, '경리부', 20,'인사부', 30,'영업부', 40, '전산부', '미배치') 부서명
       from emp order by deptno asc;
select * from dept;
-- loc 서울-롯데타워 인천-월미도 용인-에버랜드 수원-수원성   컬럼명은 관광지
select loc, decode( loc, '서울', '롯데타워', '인천','월미도', '용인','에버랜드','수원','수원성') 관광지 from dept;
-- dept의 구조에서 컬럼 추가 컬럼명은 tourism 자료형은 varchar2(20)으로 하세요
alter table dept add tourism varchar2(20);
-- 그리고 업데이트 시키세요.
update dept set tourism = decode( loc, '서울', '롯데타워', '인천','월미도', '용인','에버랜드','수원','수원성'); 
     
-- CASE함수
-- 형식
--  case when 조건식1 then 결과1
--       when 조건식2 then 결과2
--       else 위의 조건이 모두 아닌 경우 처리할 결과n
--  end    
select * from student;
--1) 수강 코드(cou_id)가 10이면 '자바'과정 20이면 '자바스크립트'과정 30이면 '데이터베이스'과정 40이면 '스프링'과정 이외는 '기본'과정
select distinct cou_id,
    case when cou_id=10 then '자바'
        when cou_id=20 then '자바스크립트'
        when cou_id=30 then '데이터베이스'
        when cou_id=40 then '스프링'
        else '기본'
    end 과정명
from student order by cou_id;

--2) 이름이 '박'씨이고 나이가 25살 이상인 사람은 'A강의실로 오세요' '오'씨이고 나이가 25살 이하이면 'B강의실로 오세요'
--  다른 분들은 '집에 가셔도 됩니다'
select stu_name,
    case when (stu_name like '박%' and age >= 25) then 'A강의실로 오세요'
        when (stu_name like '오%' and age <= 25) then 'B강의실로 오세요'
        else '집에 가셔도 됩니다'
    end 강의실
from student;
--3) 성별(sex)가 남자(M)이면 '남자화장실은 1층' 여자('F')이면 '여자화장실은 2,3층'로 출력하기
select distinct sex,
    case when (sex = 'M') then '남자화장실은 1층'
         when (sex = 'F') then '여자화장실은 2,3층'
    end 화장실
from student;

-----------------------------------
-- 그룹함수

select * from emp; -- 17행 
select count(comm) from emp; -- 14 null인 것 세지 않는다.
select count(*) from emp; -- 17 로우를 센다
-- 급여 합계, 평균, 최대값, 최소값, 표준편차, 분산 구하기
select sum(sale), avg(sale), max(sale), min(sale), stddev(sale), variance(sale) from emp;
select sum(sale), avg(sale), max(sale), min(sale), stddev(sale), variance(sale) from emp;
-- 주의 그룹함수와 일반 컬럼 같이 쓰면 안됨  select ename-17명의 이름, sum(sale)-1개 합계값 from emp; 오류 발생

-- 직위 종류의 갯수는? 사원, 대리, 과장, 부장, 차장, 사장, 수습 답 7개
select count( distinct job ) from emp;
-- 평균 급여(561)보다 많이 받는 사람의  이름, 급여을 출력하시오
select ename, sale from emp where sale >= 561;
-- 평균 급여 구하기 
select round( avg(sale) ) from emp;
-- 
select ename, sale from emp where sale >= ( select round( avg(sale) ) from emp ) ;

select * from student;
-- 평균 나이보다 작은 사람의 stu_id, stu_name, age 출력해 주세요.
-- 1단계 평균 나이를 먼저 구한다.
select round( avg( age ) )  from student;
-- 2단계 1단계 평균 나이를 조건문으로 사용한다.
select stu_id, stu_name, age from student where age < 26;
-- 3단계 1단계 + 2단계 합친다
select stu_id, stu_name, age from student where age < ( select round( avg( age ) )  from student );

select * from emp;
-- 사원들의 전체 급여합은?
select sum(sale) from emp;
-- 그룹별로 합을 구하기 
-- 부서별 급여의 합계는? 
select deptno from emp group by deptno order by deptno asc;
select deptno 부서번호, sum(sale) 부서별급여합 from emp group by deptno;
-- 학년별 평균은? 
select * from student;
-- 코스(cou_id)별로 나이의 평균, 최대 나이를 구하기
select cou_id, trunc(avg(age)), max(age) from student group by cou_id order by cou_id asc;

select * from emp order by deptno;
-- 매니저(MGR) 별로 맨토하는 인원수는?
select mgr, count( empno ) from emp group by mgr order by mgr asc;
-- job 직위별로 급여의 평균과 보너스 평균을 구하세요.
select job, avg(sale), avg(comm) from emp group by job order by job asc;
-- 첫번째 그룹 - 부서별 두번째 그룹-직위별 
select deptno, job, avg(sale) from emp group by deptno, job  order by deptno asc;
-- 부서별 급여 평균이 600이상인 부서를 출력하세요
select deptno, avg(sale) from emp group by deptno having avg(sale) >= 600 ;

-- 사원을 제외하고 급여 총액이 800이상인 직급별 급여 총액 구하기
-- 사원을 제외하고 급여 총액이 800이상(조건)인 직급별-그룹 급여 총액 구하기
select job, sum(sale) from emp where job != '사원' group by job having sum(sale) > 800 order by job asc;
--수행 순서   5               1           2                  3                4            6
select * from emp where job != '사원';

-- 1) 모든 사원의 급여최고액, 최저액, 총액 및 평균 급여를 출력하시오.   평균에 대해서는 정수로 반올림하시오
select max(sale), min(sale), sum(sale), round( avg(sale) ) from emp;
-- 2) 각 담당 업무 유형별로 급여 최고액, 최저액, 총액 및 평균액을 출력하시오. 
select job, max(sale), min(sale), sum(sale), round( avg(sale) ) from emp group by job;
-- 3) count(*)함수를 이용하여 담당 업무별 사원수를 출력하시오
select job, count(job) from emp where job is not null group by job;
-- 4) 과장 수를 나열하시오
select job, count(job) from emp group by job having  job='과장';
-- select job, count(job)  from emp where job='과장';안됨
-- 5) 급여 최고액, 급여 최저액의 차액을 출력하시오.
select  max(sale), min(sale), max( sale) - min( sale ) 차액 from emp;
-- 6) 직급별 최저 급여을 출력하시오. 
--    최저 급여가 500미만인 그룹은 제외시키고, 결과를 급여에 대한 내림차순으로 정렬하여 출력하시오
select job, min(sale) from emp group by job having  not ( min(sale) < 500 ) order by min(sale) desc;
-- 7) 각 부서에 대해 부서번호, 사원수, 부서내의 모든 사원 평균 급여를 출력하시오. 평균 급여는 소수점 둘째자리로 반올림하시오
select deptno, count( deptno),round( avg(sale), 2)   from emp group by deptno order by deptno;
-- 8) 각 부서에 대해 부서번호, 부서이름, 지역명, 사원수, 부서 내의 모든 사원의 평균 급여를 출력하시오. 평균 급여는 정수로 소수점 둘째 자리로 반올림하시오. 
select * from dept;  10 경리부 서울 2 600
select deptno 부서코드, 
       decode( deptno, 10,'경리부', 20,'인사부', 30,'영업부', 40, '전산부' ) 부서명,
       decode( deptno, 10,'서울', 20,'인천', 30,'용인', 40, '수원' ) 지역명,
       count( deptno ) 부서인원수,
       round( avg(sale), 2 ) 평균급여
       from emp
       group by deptno
       order by deptno asc;
       

