

//createcommand
create table student1 (rolno number(20) primary key ,name varchar(20), age number(2),bname varchar(5),perc number(2,2),email varchar(30) unique);
insert into student1 values(1,'vasanthi',18,'cse',98.2,'v@gmail.com');
insert into student1 values(2,'vaishu',18,'cse',99.9,'va@gmail.com');


create table students (rolno number(20) primary key ,name varchar(20), age number(2),bname varchar(5),perc number(2),email varchar(30) unique);
insert into students values(1,'vasanthi',18,'cse',98,'v@gmail.com');
insert into students  values(2,'vaishu',18,'cse',99,'va@gmail.com');



//updatecommand
update students
set perc=94 
where rolno=1 ;
select *
from students;


//insertcommand
insert into students  values(3,'vyshu',18,'cse',99,'vy@gmail.com');



//deletecommand
delete from students 
where rolno=2 ;
select *
from students;


//altertableaddingcolumncommand
alter table students add sec varchar(3) ;
select *
from students;


//modify columnsize
alter table students modify bname varchar(30) ;
select *
from students;


//deletingcolumn
alter table students drop column age ;
select *
from students;


//deletingdatafromaexistingtable
truncate table students ;


//deletingentiretablefromdatabase
drop table students;
