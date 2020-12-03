create database Assignment1;
use Assignment1;
create table Member
(
Member_Id int(5) primary key,
Member_Name Varchar(30),
Member_address Varchar(50),
Acc_Open_Date Date,
Membership_type Varchar(20),
Penalty_Amount int(7)
);
create table Book(
Book_No int(6),
Book_Name	varchar(30),
Author_name varchar(30),
Cost int(7),
Category char(10)
);
create table Issue(
Lib_Issue_Id	int(10),
Book_No	int(6),
Member_Id	int(5),
Issue_Date	Date,
Return_date	Date


);
show tables;
desc book;
desc issue;
desc member;
alter table Member drop column Penalty_Amount;
insert into Member values(1,	'Richa Sharma',	'Pune',	'2005-05-05',	'Lifetime');
insert into Member values(2	,'Garima Sen',	'Pune'	,Current_date	,'Annual');
insert into Member values(3	,'Rutvij Dasputre',	'Pune'	,'2020-12-30'	,'Half-Year');
insert into Member values(4	,'Shamal Nikumbh',	'Aurangabad','2020-03-17','Lifetime');
insert into Member values(5	,'Shravani dusane',	'nashik'	,Current_date	,'Annual');
insert into book values(101,	'Let us C',	'Denis Ritchie',	450	,'System');
insert into book values(102	,'Oracle – Complete Ref	','Loni'	,550	,'Database');
insert into book values(103,	'Mastering SQL'	,'Loni'	,250,	'Database');
insert into book values(104,	'PL SQL-Ref	','ScottUrman'	,750	,'Database');
select * from member;

select * from book;
update book set cost=300, Category='RDBMS' where Book_No=103;
drop table Issue;
create table Issue(
Lib_Issue_Id	int(10),
Book_No	int(6),
Member_Id	int(5),
Issue_Date	Date,
Return_date	Date


);
insert into Issue values(7001,	101,	1,	'2006-12-10',null);
insert into Issue values(7002,	102,	2,	'2006-12-25',null);
insert into Issue values(7003,	103,	1,	'2006-01-15',null);
insert into Issue values(7004,	104,	1,	'2006-07-04',null);
insert into Issue values(7005,	105,	2,	'2006-11-15',null);
insert into Issue values(7006,	106,	3,	'2006-02-02',null);
select * from issue;

