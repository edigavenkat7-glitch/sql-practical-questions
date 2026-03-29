#write a sql query to find all missing numbers between the minimum number and maximum number 
# you are given a table containing a list of numbers with some values missing in between 


select 
table_b.num
from 
(select 1 num from dual
union 
select 2 from dual
union 
select 3 from dual
union 
select 4 from dual
union 
select 5 from dual 
union 
select 10 from dual)table_A right join 
(select level num from dual connect by level<=10)table_b
on table_b.num=table_A.num
where table_a.num is null;
