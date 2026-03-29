 #Find out the Studentwise Total Marks for Top 2 Subjects

CREATE TABLE students (
    student_name VARCHAR2(50),
    subject VARCHAR2(50),
    marks number
);
 
INSERT all 
into students (student_name, subject, marks) VALUES('Alice', 'Math', 65)
into students (student_name, subject, marks) VALUES('Alice', 'Science', 80)
into students  (student_name, subject, marks) VALUES('Alice', 'English', 78)
into students  (student_name, subject, marks) VALUES('Bob', 'Math', 82)
into students  (student_name, subject, marks) VALUES('Bob', 'Science', 85)
into students  (student_name, subject, marks) VALUES('Bob', 'English', 88)
into students  (student_name, subject, marks) VALUES('Catherine', 'Math', 70)
into students  (student_name, subject, marks) VALUES('Catherine', 'Science', 72)
into students  (student_name, subject, marks) VALUES('Catherine', 'English', 68)
into students  (student_name, subject, marks) VALUES('Daniel', 'Math', 99)
select * from dual;


-- Find out the Studentwise Total Marks for Top 2 Subjects

select student_name,sum(marks) from 
(
select student_name, subject, marks,row_number() over(partition by student_name order by marks desc) rnk
from students)
where rnk<=2
group by student_name
