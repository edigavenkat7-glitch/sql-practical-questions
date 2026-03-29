CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    AuthorName VARCHAR(100)
);

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    AuthorID INT,
    BookTitle VARCHAR(200),
    PublicationYear DATE,
    FOREIGN KEY (AuthorID) REFERENCES  Authors(AuthorID)
);


INSERT all INTO Authors (AuthorID, AuthorName) VALUES(1, 'Author A')
INTO Authors  VALUES(2, 'Author B')
INTO Authors  VALUES(3, 'Author C')
INTO Authors  VALUES(4, 'Author D')
INTO Authors VALUES(5, 'Author E')
select * from dual;


alter session set nls_date_format='yyyy-mm-dd';
INSERT all  INTO Books (BookID, AuthorID, BookTitle, PublicationYear) VALUES
(1, 1, 'Book 1 by Author A', '2023-01-15')
INTO Books (BookID, AuthorID, BookTitle, PublicationYear) VALUES(2, 1, 'Book 2 by Author A', '2023-07-20')
INTO Books (BookID, AuthorID, BookTitle, PublicationYear) VALUES(3, 2, 'Book 1 by Author B', '2022-03-10')
INTO Books (BookID, AuthorID, BookTitle, PublicationYear) VALUES(4, 2, 'Book 2 by Author B', '2023-05-05')
INTO Books (BookID, AuthorID, BookTitle, PublicationYear) VALUES(5, 3, 'Book 1 by Author C', '2023-06-25')
INTO Books (BookID, AuthorID, BookTitle, PublicationYear) VALUES(6, 3, 'Book 2 by Author C', '2021-08-15')
INTO Books (BookID, AuthorID, BookTitle, PublicationYear) VALUES(7, 4, 'Book 1 by Author D', '2022-09-30')
INTO Books (BookID, AuthorID, BookTitle, PublicationYear) VALUES(8, 4, 'Book 2 by Author D', '2023-12-05')
INTO Books (BookID, AuthorID, BookTitle, PublicationYear) VALUES(9, 5, 'Book 1 by Author E', '2023-04-17')
INTO Books (BookID, AuthorID, BookTitle, PublicationYear) VALUES(10, 5, 'Book 2 by Author E', '2020-11-01')
select * from dual;

--list all authors and no of books written
select AUTHORNAME ,count(*) from Authors a,books  b where a.authorid=b.authorid
group by AUTHORNAME;
select * from  books;



-- find the books published in the last year and corresponding authors 

select c.AuthorName,c.BookTitle,PublicationYear from (
select a.AuthorName,b.BookTitle,b.AuthorID,b.PublicationYear,
rank() over(partition by AUTHORNAME order by extract(year from b.PublicationYear) desc) as rn
from Books  b
join Authors  a
on a.AuthorID = b.AuthorID) c
where c.rn=1;
