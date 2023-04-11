-- ¿À¶óÅ¬ ÁÖ¿ä ÇÔ¼ö
--dual : ¿À¶óÅ¬¿¡¼­ Áö¿øÇØÁÖ´Â ´õ¹Ìµ¥ÀÌÅÍ
--round : ¹İ¿Ã¸²
--abs : Àı´ñ°ª
--trunc : ¼Ò¼öÁ¡(³ª¸ÓÁö´Â ÀÚ¸§)
select round(85/3) from dual;
select * from dual;
select abs(-90) Àı´ñ°ª, trunc(34.5678,2), mod(90,8) from dual;
--¹®ÀÚ Ã³¸® ÇÔ¼ö
select 'welcome to Oracle', upper('welcome to Oracle'), lower('welcome to Oracle'), initCap('welcome to Oracle')
from dual;
--±æÀÌ
select length('È«±æµ¿') from dual; --¹®ÀÚ±æÀÌ
select lengthb('È«±æµ¿') from dual; --¹®ÀÚÀÇ ¹ÙÀÌÆ® ¼ö('È«' ÇÏ³ª°¡ 3¹ÙÀÌÆ®)
--4¹øÂ° ±ÛÀÚºÎÅÍ 3°³ ÃßÃâ
select substr('welcome to Oracle',4,3) from dual;
--TO com Ãß­”
select substr('welcome to Oracle',9,2) from dual;
select substr('Welcome To Oracle',9,1)|| substr('Welcome To Oracle',12,1)||
substr('Welcome To Oracle',8,1)|| substr('Welcome To Oracle',4,3)
from dual;

select * from student;
--¹®Á¾Çå ÇĞ»ıÀÇ ÀÌ¸ŞÀÏ¿¡¼­ @¸¦ Ãâ·ÂÇÏ±â
--1.¹®Á¾Çå ÀÌ¸ŞÀÏ Ãâ·Â
select stu_email from student where stu_name='¹®Á¾Çå';
--2. @ Ãâ·Â
select substr(stu_email,5,1) from student where stu_name='¹®Á¾Çå';
select substr(stu_id,2,2) as "ÀÏ·Ã¹øÈ£" from student;

--instr
select instr('µ¥ÀÌÅÍº£ÀÌ½º','ÀÌ',4,1) from dual;
--1¹øºÎÅÍ ÇØ¼­ 2¹øÂ° ³ª¿À´Â '¾Æ'Ã£±â
select instr('ÇĞ»ı¾ÆÀÌµğ ÇĞ»ı¾ÆÀÌµğ','¾Æ',1,2)from dual;
select * from student;

--stu_id°¡ 120ÀÌ ÀÖ´ÂÁö?
select stu_id from student;
--lpad : Æ¯Á¤ ±âÈ£·Î Ã¤¿ò
select lpad('È«±æµ¿',20,'#') from dual;

-- ¿À¶óÅ¬ ÁÖ¿ä ÇÔ¼ö 
select round(85/3) from dual;
select * from dual;
select abs(-90) Àı´ë°ª, trunc(34.5678, 2), mod( 90, 8)   from dual;
-- ¹®ÀÚ Ã³¸® ÇÔ¼ö
select 'Welcome to Oracle', upper( 'Welcome to Oracle'), lower('Welcome to Oracle'), initCap('WELCOME TO ORACLE')
  from dual;

select length('È«±æµ¿') from dual;  -- ¹®ÀÚÀÇ ±æÀÌ Ãâ·Â
select lengthb('È«±æµ¿') from dual;   -- 'È«' - 3¹ÙÀÌÆ® ¹®ÀÚÀÇ ¹ÙÀÌÆ®¼ö Ãâ·Â

select substr( 'Welcome To Oracle', 4, 3) from dual;
-- TO cem
select  substr( 'Welcome To Oracle', 9, 1) || substr( 'Welcome To Oracle', 12, 1) ||
               substr( 'Welcome To Oracle', 8, 1)|| substr( 'Welcome To Oracle', 4, 1)||
               substr( 'Welcome To Oracle', 7, 1)|| substr( 'Welcome To Oracle', 6, 1)
         from dual;

select * from student;
-- ¹®Á¾ÇåÇĞ»ıÀÇ ÀÌ¸ŞÀÏ¿¡¼­ @À» Ãâ·ÂÇÏ±â
-- ¹®Á¾ÇåÀÇ ÀÌ¸ŞÀÏÀ» Ãâ·ÂÇÏ±â 
select stu_email from student where stu_name='¹®Á¾Çå'; 
-- À§¿¡ select¹®À» È°¿ëÇØ¼­ @¸¦ ÃßÃâ
select    substr( stu_email, 5, 1 )     from student where stu_name='¹®Á¾Çå'; 
-- ÇĞ»ı¾ÆÀÌµğ¿¡¼­ 2¹øÂ° 3¹øÂ° ¼ıÀÚ¸¦ »Ì±â ¸ğµç ·¹ÄÚµå Ãâ·Â 01 02 ... 16 
select substr(stu_id, 2, 2) as "ÀÏ·Ã¹øÈ£" from student;

-- instr
select instr('µ¥ÀÌÅÍº£ÀÌ½º', 'ÀÌ') from dual;
select instr('ÇĞ»ı¾ÆÀÌµğ ÇĞ»ı¾ÆÀÌµğ', '¾Æ', 1, 2) from dual;
select instr('¾ø´Â±ÛÀÚ´Â ¾î¶»²² ³ª¿À³ª? 0ÀÌ ³ª¿Â´Ù.','¹Ú') from dual;
select * from student;

-- stu_id°¡ 120ÀÌ ÀÖ³ª? 
select instr(stu_id, 116), stu_id  from student; 


select sysdate from dual;
--¿À´Ã ³¯Â¥ ±âÁØÀ¸·Î ¾îÁ¦ ³»ÀÏ ³¯Â¥ °è»ê
select to_char(sysdate -1,'yyyy/mm/dd') ¾îÁ¦,
    to_char(sysdate,'yyyy/mm/dd') ¿À´Ã,
    to_char(sysdate +1,'yyyy/mm/dd') ³»ÀÏ
from dual;
select to_char(sysdate,'yyyy/mm/dd') ´ëÃâÀÏ,
to_char(sysdate +14,'yyyy/mm/dd') ¹İ³³ÀÏ
from dual;
--round
select round('2023/05/30', 'cc') from dual;














--dept ÄÃ·³Ãß°¡ tourism varchar2(20)
select *from dept;
alter table dept add tourism varchar2(20);
alter table dept add decode varchar2(20);
select loc,decode(loc,'new york','·Ôµ¥Å¸¿ö','dallas','¿ù¹Ìµµ','chicago','È­¼º')from dept;
update dept set tourism=decode(loc,'new york','·Ôµ¥Å¸¿ö','dallas','¿ù¹Ìµµ','chicago','È­¼º');




select * from student;


 
 
 
 
 
 
 select *from emp;
 --1.¸ğµç »ç¿ø ±Ş¿©ÃÖ°í¾×, ÃÖÀú¾×, ÃÑ¾×, Æò±Õ±Ş¿©
 select deptno, max(sal) "±Ş¿©ÃÖ°í¾×", min(sal) "ÃÖÀú¾×",
 sum(sal) "ÃÑ¾×", avg(sal) "Æò±Õ±Ş¿©"
 from emp
 group by deptno;
 
 --2.´ã´ç¾÷¹« À¯Çüº° ÃÖ°í¾×,ÃÖÀú¾×, ÃÑ¾×, Æò±Õ
 select job, max(sal) "±Ş¿©ÃÖ°í¾×", min(sal) "ÃÖÀú¾×",
 sum(sal) "ÃÑ¾×", avg(sal) "Æò±Õ±Ş¿©"
 from emp
 group by job;
 
  
 
 
 
