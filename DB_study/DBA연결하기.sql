--java ���翡 �ִ� ���̺� ����� p903
--����� ���� ���̺�
create table users(
userid varchar2(50) primary key,
username varchar2(50) not null,
userpassword varchar2(50) not null,
userage number(3) not null,
useremail varchar2(50) not null
);

--�Խù� ���� ���̺�
create table boards(
bno number primary key,
btitle varchar2(100) not null,
bcontent clob not null,--clob:�������Ŀ� �뷮 ū ������(char)
bwriter varchar2(50) not null,
bdate date default sysdate,
bfilename varchar2(50) null,
bfiledata blob null--blob: ���̳ʸ�(�� ��/����,����,�׸�..) ������ ū �뷮 �����Ϳ�
);

--904�� bno�÷��� �ڵ� ������ �������� �����
create sequence seq_bno nocache;
create table accounts(
ano varchar2(20) primary key,
owner varchar2(20) not null,
balance number not null
);

insert into accounts(ano,owner,balance)
values('111-111-1111','�Ͽ���',1000000);

insert into accounts(ano,owner,balance)
values('222-222-2222','�Ѱܿ�',0);

select * from accounts;

commit;

--*���ν��� : �ܹ��� sql���� �����Ͽ� ���������� ó���ϰ� ����� ��
create or replace procedure user_create(
a_userid in users.userid%type, --�������� in(�Է¹޴´�) users���̺� userid�÷��� ���� �ڷ����̴�
a_username in users.username%type,
a_userpassword in users.userpassword%type,
a_userage in users.userage%type,
a_useremail in users.useremail%type,
a_rows out pls_integer --���(out)�Ǵ� �ڷ����� ������(integer)�̴�
)
is
begin --begin �ȿ� ������ �ִ´�
 insert into users(userid,username,userpassword,userage,useremail)
      values(a_userid,a_username,a_userpassword,a_userage,a_useremail); --�ܹ�1 ����.���ڵ� �����ϴ� ���
a_rows :=sql%rowcount; --�ܹ�2 ����. ���� ���� ���� a_rows ������ �־��
commit; --�ܹ�3 ����. Ʈ����� �ݿ��ϱ�


end;
/ --���� ���ν��� �����ض�

--user_login �Լ� �����
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
return 0; --���� �ΰ��� ������ 0 ����
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
//�ڹٿ� �����ϱ�
insert into boards(bno,btitle,bcontent,bwriter) values(1000,'�Խ�������1','�Խ��ǳ���1','ȫ�浿1'); 
select * from boards;

--boards�� �ִ� ��� ���ڵ� ����
delete from boards;
select * from boards;
select seq_bno.nextval from dual;

--'snow.jpg','c:/temp/snow.jpg'
insert into boards(bno, btitle,bcontent,bwriter,bdate,bfilename)
values(seq_bno.nextval,  '����1', '����1','�ۼ���1',sysdate,'snow.jpg');


select * from boards;


commit;


update boards set btitle='������',bcontent='������ ����',bfilename='snow.jpg' where bno=4;

select * from users;