create database Assignment5;
use assignment5;
Create table EMP ( EMPNO numeric(4) not null, ENAME varchar(30) not null, JOB varchar(10), MGR numeric(4), 
HIREDATE date, SAL numeric(7,2), DEPTNO numeric(2) ); 
Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL,  DEPTNO ) values(1000,  'Manish' , 'SALESMAN', 1003,
  '2020-02-18', 600,  30) ;
  Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO ) values(1001,  'Manoj' , 'SALESMAN', 1003,
  '2018-02-18', 600,  30) ;
  Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO) values(1002 , 'Ashish', 'SALESMAN',1003 ,
  '2013-02-18',  750,  30 );
  Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL,  DEPTNO ) values(1004,  'Rekha', 'ANALYST', 1006 , 
  '2001-02-18', 3000,  10);
  Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL,  DEPTNO) values(1005 , 'Sachin', 'ANALYST', 1006 , 
  '2019-02-18', 3000, 10 );
  Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL,  DEPTNO ) values(1006,  'Pooja',  'MANAGER'  ,  
  null    , '2000-02-18' ,6000, 10 );
  

Create table dept (dno numeric(4) not null, dname varchar(10) not null,area varchar(30));
Insert into dept(dno,dname,area) values(10,'Store','Mumbai');
Insert into dept(dno,dname,area) values(20,'Purchase','Mumbai');
Insert into dept(dno,dname,area) values(30,'Store', 'Delhi');
Insert into dept(dno,dname,area) values(40,'Marketing','Pune');
Insert into dept(dno,dname,area) values(50,'Finance','Delhi');
Insert into dept(dno,dname,area) values(60,'Accounts','Mumbai');
delimiter $$
create procedure ADD_Number(in var1 double,in var2 double)
begin 
select var1+var2;
select var1-var2;
select var1*var2;
select var1/var2;
select var1%var2;
end $$
call ADD_Number(10,20);
delimiter $$
create procedure Revese_string(in var varchar(10))
begin
select reverse(var);
end $$
call Revese_string('database');
delimiter $$
create procedure display_detail(in var int)
begin 
select empno,ename,sal from emp order by sal desc limit var;
end$$
call display_detail(5);
delimiter $$
create procedure Que04()
begin
create table emp_test(e_id integer ,e_name varchar(20),e_joining_date date);
end $$
call Que04;
desc emp_test;
delimiter $$
create procedure record()
begin
insert into dept(dno,dname,area) values (60,'education','pune');
end $$
call  record();
select * from dept;


delimiter $$
create procedure NUmber_test(in num int,out var varchar(10))
begin
declare num1 int;
declare num2 int;
set num1=num*num;
set num2=num*num*num;
set var= concat(num,' ',num1,' ',num2);
end$$
call NUmber_test(3,@num);
select @num;

delimiter $$
create procedure display1(in num int,out dis int)
begin
set dis=num;
end$$
call display1(2,@num);
select @num;

delimiter $$
create procedure demo(inout d int)
begin 
set d=d+1;
end $$
set @num=3;
call demo(@num);
select @num;




