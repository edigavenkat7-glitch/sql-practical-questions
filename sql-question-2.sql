/* practise all joins with below data set , you will get handson experience with joins and syntax  */

create table t1(s_no number);
create table t2(s_no number);

insert all into t1 values(1)
into t1 values(1)
into t1 values(1)
into t1 values(2)
into t1 values(3)
into t1 values(3)
into t1 values(3)
select * from dual;

insert all into t2 values(1)
into t2 values(1)
into t2 values(2)
into t2 values(2)
into t2 values(4)
into t2 values(null)
select * from dual;

#inner join 

select * from t1 inner join t2 on t1.s_no=t2.s_no;

#left join 

select * from t1 left join t2 on t1.s_no=t2.s_no;

#right join 
select * from t1 right join t2 on t1.s_no=t2.s_no;

#self  join
select * from t1 a join t1 b on a.s_no=b.s_no;

#cross join 
  select * from t1 a , t2 ;

#full outer join 
select * from t1 a full outer join t1 b on a.s_no=b.s_no;


