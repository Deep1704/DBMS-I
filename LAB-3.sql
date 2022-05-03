--2.3--

--delete from customers
-- where city='bombay'

 --select * from customer

 /*1*/

--delete from deposit
-- where amount<=1000

--select * from deposit

/*2*/

--delete from borrow
-- where bname='ajni'

--select * from borrow

/*3*/

--delete from borrow
-- where loanno between 201 and 210

--select * from borrow

/*4*/

--delete from deposit
-- where adate>'01-12-96'

 --select * from deposit

 /*5*/

 --truncate table customers

 --select * from customers

 /*6*/

 --delete from deposit
 --  where cname='anil' and actno=101

 --select * from deposit

 /*7*/

 --delete from deposit
 -- where bname<>'andheri'

 --select * from deposit

 /*8*/

 --delete from borrow
 --  where amount<2000 and bname<>'vrce'

 --select * from borrow

 /*9*/

 --drop table branch

 --select * from branch

/*10*/

-----Lab-3-----

--create table student
--(Enrollment_No varchar(20),
--Name varchar(25),
--CPI decimal(5,2),
--Birthdate datetime
--);

--select * from student

--alter table student
--  add city varchar(20) null,
--      backlog int not null

/*1*/

--alter table student
--  alter column name varchar(35)

/*2*/

--alter table student
--  alter column CPI int

/*3*/

--SP_rename 'Student.Enrollment_No' , 'ENO'

/*4*/

--ALTER TABLE STUDENT
--  DROP COLUMN CITY

/*5*/

--SP_RENAME 'Student' , 'Student_Master'

/*6*/

--alter table student_master
--  drop column backlog

/*7*/

--alter table student_master
-- alter column name varchar(35) not null

/*8*/

--SP_RENAME 'Student_Master.Birthdate' , 'BDate'

/*9*/

--alter table student_master
--  alter column eno varchar(12)

/*10*/
 



                                  