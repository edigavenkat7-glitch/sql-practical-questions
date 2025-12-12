#we have table with full names , need to split them into first_name and last_name "

create table account_names(id number,full_name varchar2(20));

insert all into account_names values(1,'john doe')
into account_names values(2,'emma watson')
into account_names values(3,'emily rose pattrick')
into account_names values(4,'robert downey')
into account_names values(5,'chris evans')
into account_names values(6,'scralett johnansson')
select * from dual;


SELECT
    REGEXP_SUBSTR(full_name, '^[^ ]+') AS first_name,
    REGEXP_SUBSTR(full_name, '[^ ]+$') AS last_name
FROM account_names;


select full_name , substr(full_name,1,instr(full_name,' ') -1),
substr(full_name,instr(full_name,' ')+1 )
from account_names;
