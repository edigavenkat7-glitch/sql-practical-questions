# generate the number 1 to 10 

select level from dual connect by level <=10;

#find even number between 1 to 10 
  
with cte as (
select level num_ber from dual connect by level <=10
)
SELECT  num_ber
FROM cte where MOD(num_ber, 2) = 0

#find odd numbers between 1 to 10 

with cte as (
select level num_ber from dual connect by level <=10
)
SELECT  num_ber
FROM cte where MOD(num_ber, 2) = 1
/

#generate a series of dates between 2 dates 

with cte as (
select to_Date('2015-01-10','yyyy-mm-dd') start_Date ,to_Date('2015-01-15','yyyy-mm-dd') end_date 
from dual
)
select start_date+(level-1) from cte connect by level <= (end_date-start_Date)+1
/

