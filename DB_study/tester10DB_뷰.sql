--뷰*******
create table c5emp as select * from emp;
create view viewEmp as select*from c5emp;

--복잡한 서브쿼리문을 빈번히 사용할 경우 이걸 뷰로 만든다
--예)
select member.ename 사원이름, manager.ename 직속상관이름
   from emp member left outer join emp manager
   on member.mgr = manager.empno;
뷰 만들기
create view viewnameMgr as
select member.ename 사원이름, manager.ename 직속상관이름
   from emp member left outer join emp manager
   on member.mgr = manager.empno;
뷰 보기
select * from viewnamemgr;   
   
뷰에서 자료 찾기
select * from viewnamemng where 사원이름='김수환';

select * from student;
select * from course;
   
--서브쿼리 문제
--course가 모바일인 사람의 cou_id,tea_name, stu_name
select c.cou_id,c.cou_name,c.tea_name,s.stu_id,s.stu_name
from course c,student s 
where c.cou_id=s.cou_id;
--뷰로 만들기
--create view 뷰이름 as 쿼리문
create view viewStuCou as 
select c.cou_id,c.cou_name,c.tea_name,s.stu_id,s.stu_name
from course c,student s 
where c.cou_id=s.cou_id;
--뷰 보기
select * from viewStucou;
select * from viewstucou where cou_id='10';
select * from viewstucou where cou_id in (10,20);

--뷰에 삽입
--원래테이블의 자료가 연결될 때 오류가 발생해서 입력 잘 안됨
insert into viewstucou(cou_id, cou_name,tea_name,stu_id,stu_name)
values(50,'모하지','홍길동',999,'김이박');

--테이블 만들기
create table login(
id varchar2(20),
password varchar2(20)
);

create table member(
phone varchar2(20)
);
--두 테이블을 합친 뷰 만들기
select * from login, member ;
create view vlm as select * from login;

create view vlogin as select * from login;

insert into vlogin values('1000','1234');

select * from vlogin;


--뷰로 뷰를 만들 수 있을까?->가능
create or replace view v3login as select * from vlogin;

--급여가 800 이상인 사람만 뷰를 만든다
select * from emp;
create or replace view vsal500 as
select * from emp where sal>=500;

--현재 데이터베이스에서 뷰가 어떻게 되어있는지
select * from user_views;

select * from vsal500;

--vsal500 뷰의 급여를 50% 인상
update vsal500 set sal=sal+sal*0.5;

-read only
create or replace view vsal500 as
select * from emp where sal>=500 with read only;
delete from vsal500;

--뷰에서 dml(insert,update,delete) 안되게 하고싶다
create or replace view vsal700 as
select * from emp where sal between 1500 and 6000 with check option;
--업데이트할 때 범위 벗어나면 안됨

--rownum 처음에 테이블에 입력된 순서를 기억함. 입력된 시점에서 결정되고 바뀌지 않음


