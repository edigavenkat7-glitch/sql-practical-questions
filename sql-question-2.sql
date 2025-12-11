/* practise all joins with below data set , you will get handson experience with joins */

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

#inner join 

select * from ezecash.t1 inner join ezecash.t2 on t1.s_no=t2.s_no;

#left join 

select * from ezecash.t1 left join ezecash.t2 on t1.s_no=t2.s_no;

#right join 
select * from ezecash.t1 right join ezecash.t2 on t1.s_no=t2.s_no;

#self  join
select * from ezecash.t1 a join ezecash.t1 b on a.s_no=b.s_no;

#full outer join 
select * from ezecash.t1 a full outer join ezecash.t1 b on a.s_no=b.s_no;


