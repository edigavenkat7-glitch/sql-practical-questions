# we have user_activity table and following data, we need to findout the elapsed days between the two event types 

create table user_activity(user_identifier number,event_type varchar2(20) ,event_date date);

alter session set nls_date_format ='yyyy-mm-dd';
insert all into user_activity values(1,'login','2023-05-10')
into user_activity values(1,'logout','2023-05-12')
into user_activity values(2,'login','2023-06-01')
into user_activity values(2,'purchase','2023-06-04')
into user_activity values(3,'login','2024-07-15')
into user_activity values(3,'logout','2024-07-16')
into user_activity values(4,'login','2024-08-20')
into user_activity values(4,'purchase','2024-08-25')
select * from dual;



select USER_IDENTIFIER ,max(event_date) - min(event_date) days_elapsed 
from user_activity
group by USER_IDENTIFIER
order by 1;


with ranked as (
select user_identifier,event_date,lag(event_Date) over(partition by user_identifier order by event_Date) prev_date 
from user_activity)
select USER_IDENTIFIER, EVENT_DATE-PREV_DATE as days_elapsed from ranked
where prev_date is not null
order by 1 
