alter session set nls_date_format ='yyyy-mm-dd';

create table customer_data(customer_id number,transaction_date date ,amount number);


insert all into ezecash.customer_data values(1,'2022-01-10',100)
into ezecash.customer_data values(2,'2022-03-15',200)
into ezecash.customer_data values(3,'2022-07-20',150)
into ezecash.customer_data values(1,'2023-02-12',300)
into ezecash.customer_data values(2,'2023-04-25',400)
into ezecash.customer_data values(3,'2023-08-05',250)
into ezecash.customer_data values(1,'2024-01-10',500)
into ezecash.customer_data values(2,'2024-03-15',600)
into ezecash.customer_data values(3,'2024-07-20',550)
select * from dual;

#using above data write a sql query find out yearly total revenue and display the previous revenue and yoy percentage of each year 


select current_year,total_revenue,lag(total_revenue) over( order by current_year) prev_revenue,
round((total_revenue-lag(total_revenue) over( order by current_year))/lag(total_revenue) over( order by current_year)*100,2)
from (
SELECT
    EXTRACT(YEAR FROM transaction_date) current_year,
    SUM(amount)                         total_revenue
FROM
    ezecash.customer_data
GROUP BY
    EXTRACT(YEAR FROM transaction_date)
order by 1
) ;
