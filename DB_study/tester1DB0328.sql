-- 캠핑장비 테이블 만들기
create table campingEqu(
  equiCode varchar2(10) not null,
  itemName varchar2(30) not null,
  price number(8),
  count number(4),
  primary key(equiCode)
);
drop table campingEqu;
-- 고객 테이블 만들기
create table custom(
  customId varchar2(10) not null,
  name varchar2(30) not null,
  phone varchar2(20) not null,
  address varchar2(50),
  primary key(customId)
); 
-- 대여 테이블 만들기
create table lent(
  lentId varchar2(10) not null,
  equiCode varchar2(10) not null,
  customId varchar2(10) not null,
  lentDate date not null,
  lentAmount number(8),
  primary key(lentId),
  foreign key(equiCode) references campingEqu(equiCode),
  foreign key(customId) references custom(customId)
);
create table return(
  returnId varchar2(10) not null,
  lentId varchar2(10) not null,
  returnDate date not null,
  overdueAmount number(8) not null,
  primary key(returnId),
  foreign key( lentId ) references lent(lentId)  
);

-- 3시 50분까지 다른 프로젝트의 테이블기술서 보고 
-- 테이블 만들어 주세요

-- 테이블안에 데이터를 삽입하기
insert into campingequ 
      values( 'T-100','텐트',100000, 30); 
insert into campingequ 
      values( 'C-200','의자',10000, 100);
insert into campingequ 
      values( 'F-300','그릇',50000, 70);      
-- 전체 레코드 검색하기
select * from campingequ;
-- 조건에 만족하는 레코드를 삭제하기
delete from campingequ where itemName='그릇';

insert into custom 
      values( 'C-100', '홍길동', '01012345678', '서울시 강동구');
insert into custom 
      values( 'C-101', '이순신', '01087654321', '경기도 하남시');
insert into custom 
      values( 'C-102', '최수연', '01055557777', '경기도 하남시');
select * from custom;    
-- 경기도 하남시 최수연 주소를 변경하기
update custom set address = '경기도 성남시' where customId = 'C-102';

insert into lent
       values( 'L-001', 'T-100','C-100', '2023-03-28', 2);
insert into lent
       values( 'L-002', 'F-300','C-102', '2023-03-29', 5);
insert into lent
       values( 'L-003', 'T-100','C-102', '2023-03-29', 1); 
select * from lent;     

insert into return
       values( 'R-001', 'L-001','2023-04-07', 0);

insert into return
       values( 'R-002', 'L-003','2023-04-10', 50000);       

select * from return;

-- 삽입하기 형식
insert into 테이블명
    values( '문자데이터', 숫자데이터,'날자데이타');
-- 삭제하기 형식
delete from 테이블명 where 지울컬럼명 = '지울실제데이터';
-- 수정하기 형식
update 테이블명 set 컬럼명 = 변경할새로운자료 where 변경할컬럼명 = 찾을자료;

-- 반납한 사람의 이름을 출력해 주세요 답은 홍길동 최수연

-- 3월 28일 대여한 사람의 이름과 주소를 출력해 주세요.

-- 도서관리, 은행업무 관리 프로젝트안에 샘플 데이터를 삽입하기


