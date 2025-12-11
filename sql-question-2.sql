/* all 

create table ezecash.t1(s_no number);
create table ezecash.t2(s_no number);

insert all into ezecash.t1 values(1)
into ezecash.t1 values(1)
into ezecash.t1 values(1)
into ezecash.t1 values(2)
into ezecash.t1 values(3)
into ezecash.t1 values(3)
into ezecash.t1 values(3)
select * from dual;

insert all into ezecash.t2 values(1)
into ezecash.t2 values(1)
into ezecash.t2 values(2)
into ezecash.t2 values(2)
into ezecash.t2 values(4)
into ezecash.t2 values(null)
select * from dual;
