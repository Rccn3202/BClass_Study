--java 교재에 있는 테이블 만들기 p903
--사용자 정보 테이블
create table users(
userid varchar2(50) primary key,
username varchar2(50) not null,
userpassword varchar2(50) not null,
userage number(3) not null,
useremail varchar2(50) not null
);

--게시물 정보 테이블
create table boards(
bno number primary key,
btitle varchar2(100) not null,
bcontent clob not null,--clob:문자형식에 용량 큰 데이터(char)
bwriter varchar2(50) not null,
bdate date default sysdate,
bfilename varchar2(50) null,
bfiledata blob null--blob: 바이너리(다 됨/문자,음성,그림..) 형식의 큰 용량 데이터용
);

--904쪽 bno컬럼은 자동 시퀀스 형식으로 만든다
create sequence seq_bno nocache;
create table accounts(
ano varchar2(20) primary key,
owner varchar2(20) not null,
balance number not null
);

insert into accounts(ano,owner,balance)
values('111-111-1111','하여름',1000000);

insert into accounts(ano,owner,balance)
values('222-222-2222','한겨울',0);

select * from accounts;

commit;

--*프로시저 : 단문의 sql문을 연결하여 순차적으로 처리하게 만드는 것
create or replace procedure user_create(
a_userid in users.userid%type, --변수명은 in(입력받는다) users테이블에 userid컬럼과 같은 자료형이다
a_username in users.username%type,
a_userpassword in users.userpassword%type,
a_userage in users.userage%type,
a_useremail in users.useremail%type,
a_rows out pls_integer --출력(out)되는 자료형은 정수형(integer)이다
)
is
begin --begin 안에 쿼리문 넣는다
 insert into users(userid,username,userpassword,userage,useremail)
      values(a_userid,a_username,a_userpassword,a_userage,a_useremail); --단문1 수행.레코드 삽입하는 명령
a_rows :=sql%rowcount; --단문2 수행. 행의 수를 세서 a_rows 변수에 넣어라
commit; --단문3 수행. 트랜잭션 반영하기


end;
/ --이제 프로시저 실행해라

--user_login 함수 만들기
create or replace function user_login(
a_userid users.userid%type,
a_userpassword users.userpassword%type
) return pls_integer
is 
v_userpassword users.userpassword%type;
v_result pls_integer;
begin
select userpassword into v_userpassword
from users
where userid=a_userid;

if v_userpassword=a_userpassword then
return 0; --위의 두개가 같으면 0 리턴
else 
return 1;
end if;
exception
when no_data_found then
return 2;
end;
/

insert into users (userid,username,userpassword, userage, useremail) values(?,?,?,?,?);


select * from users;
//자바에 삽입하기
insert into boards(bno,btitle,bcontent,bwriter) values(1000,'게시판제목1','게시판내용1','홍길동1'); 
select * from boards;

--boards에 있는 모든 레코드 삭제
delete from boards;
select * from boards;
select seq_bno.nextval from dual;

--'snow.jpg','c:/temp/snow.jpg'
insert into boards(bno, btitle,bcontent,bwriter,bdate,bfilename)
values(seq_bno.nextval,  '제목1', '내용1','작성자1',sysdate,'snow.jpg');


select * from boards;


commit;


update boards set btitle='눈ㅅㄹ',bcontent='눈으로 만든',bfilename='snow.jpg' where bno=4;

select * from users;