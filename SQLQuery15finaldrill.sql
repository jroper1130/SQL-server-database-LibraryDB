create database db_finaldrill;



/*books*/
create table tbl_book (
	book_id int primary key not null identity (1,1),
	book_title varchar(50) not null, 
	book_publishername varchar(50) not null
);


insert into tbl_book 
	(book_title, book_publishername)
	values 
	('The Lost Tribe','Pearson'),
	('Pet Cemetary','Cengage'),
	('Hobbit','Wiley'),
	('Simarilion','Wiley'),
	('Harry Potter','Cengage'),
	('Maze Runner','Pearson'),
	('Hunger Games','Pearson'),
	('Catch 22','Scholastic'),
	('The Grapes of Wrath','Scholastic'),
	('Lord of the Flies','Scholastic'),
	('The Catcher and the Rye','Scholastic'),
	('Slaughterhouse Five','Scholastic'),
	('Odyssey','Cengage'),
	('Mody Dick','Cengage'),
	('Divine Comedy','Cengage'),
	('Hamlet','Cengage'),
	('Of Mice and Men','Scholastic'),
	('Lord of the Rings','Wiley'),
	('Great Gatsby','Scholastic'),
	('Iliad','Cengage')
;

select * from tbl_book;

/*book author*/
create table tbl_author (
	author_id int foreign key references tbl_book(book_id),
	author_authorname varchar(50) not null
);


insert into tbl_author
	(author_id, author_authorname)
	values
	('1','Mark Lee'),
	('2','Stephen King'),
	('3','J.R. Tolkien'),
	('4','J.R. Tolkien'),
	('5','JK Rowling'),
	('6','James Dashner'),
	('7','Susanne Collins'),
	('8','Joseph Heller'),
	('9','John Steinbeck'), 
	('10','William Golding'),
	('11','J.D. Salinger'),
	('12','Kurt Vonnegut'),
	('13','Homer'),
	('14','Mark Twain'),
	('15','Dante Alighieri'),
	('16','Shakespear'),
	('17','Mark Twain'),
	('18','J.R.R Tolkien'),
	('19','Scott Fitzgerald'), 
	('20','Homer')
;

select * from tbl_author;

/*publisher*/
create table tbl_publisher (
	publisher_name varchar(50) primary key not null, 
	publisher_address varchar(50) not null,
	publisher_phone varchar(50) not null
);


insert into tbl_publisher 
	(publisher_name, publisher_address, publisher_phone)
	values 
	('Pearson','1 Hoppy Lane New York NY','555-1234'),
	('Cengage',' 123 Cheshire St Seattle Wa','555-5678'),
	('Scholastic','54321 Hollywood Ave Sacramento Ca','555-9012'),
	('Wiley',' 5627 Washington Ave Springfield Il','555-3456')
;

select * from tbl_publisher;

/*book loans*/
create table tbl_loans (
	loans_id int  FOREIGN KEY REFERENCES tbl_book(book_id),
	loans_branch varchar(50) not null, 
	loans_cardno varchar(50) not null,
	loans_dateout varchar(50) not null,
	loans_duedate varchar(50) not null
);


insert into tbl_loans 
	(loans_id, loans_branch, loans_cardno, loans_dateout, loans_duedate)
	values 
	('2','1','12','1/12/1999','1/14/1999'),
	('12','1','45','1/22/1999','1/24/1999'),
	('8','3','78','1/28/1999','1/30/1999'),
	('4','2','23','2/14/1999','2/16/1999'),     	
	('14','2','56','2/17/1999','2/19/1999'),		
	('1','1','89','2/27/1999','2/29/1999'),
	('5','3','78','3/1/1999','3/3/1999'),
	('20','3','67','3/3/1999','3/5/1999'),
	('3','2','23','3/15/1999','3/14/1999'),
	('6','1','67','4/5/1999','4/7/1999'),
	('12','2','56','4/7/1999','4/9/1999'),
	('18','2','23','4/8/1999','4/10/1999'),
	('19','4','12','4/29/1999','4/31/1999'),
	('15','1','67','5/1/1999','5/3/1999'),
	('5','2','23','5/5/1999','5/7/1999'),
	('15','2','23','5/18/1999','5/20/1999'),
	('17','1','78','5/22/1999','5/24/1999'),
	('6','2','56','6/6/1999','6/8/1999'),
	('8','2','56','6/7/1999','6/9/1999'),
	('7','2','23','7/5/1999','7/7/1999'),
	('3','2','23','7/7/1999','7/9/1999'),
	('13','4','78','7/27/1999','7/29/1999'),
	('9','3','89','7/28/1999','7/30/1999'),
	('13','1','67','8/12/1999','8/14/1999'),
	('9','4','78','8/18/1999','8/20/1999'),
	('18','2','23','8/28/1999','8/30/1999'),
	('17','3','12','9/11/1999','9/13/1999'),
	('10','4','45','9/15/1999','9/17/1999'),
	('4','2','23','9/29/1999','9/31/1999'),
	('4','1','34','9/30/1999','10/1/1999'),
	('14','4','78','10/1/1999','10/2/1999'),
	('3','2','56','10/5/1999','10/7/1999'),
	('3','4','78','10/7/1999','10/9/1999'),
	('11','1','89','10/10/1999','10/12/1999'),
	('12','1','67','10/11/1999','10/13/1999'),
	('18','1','34','10/15/1999','10/17/1999'),
	('16','4','23','10/17/1999','10/19/1999'),
	('2','4','12','10/18/1999','10/20/1999'),
	('5','2','56','10/20/1999','10/22/1999'),
	('19','3','89','10/22/1999','10/24/1999'),
	('13','4','78','10/24/1999','10/26/1999'),
	('20','4','78','10/25/1999','10/27/1999'),
	('10','3','67','11/8/1999','11/10/1999'),
	('10','4','45','11/29/1999','12/1/1999'),
	('16','4','34','11/30/1999','12/2/1999'),
	('19','4','89','12/1/1999','12/3/1999'),
	('12','1','12','12/4/1999','12/6/1999'),
	('1','3','45','12/18/1999','12/20/1999'),
	('15','2','23','12/23/1999','12/25/1999'),
	('12','2','56','12/27/1999','12/29/1999')
;

select * from tbl_loans;

/*copies*/
create table tbl_copies (
	copies_id int  FOREIGN KEY REFERENCES tbl_book(book_id),
	copies_branch varchar(50) not null, 
	copies_number varchar(50) not null
);

insert into tbl_copies 
	(copies_id, copies_branch, copies_number)
	values 
	('2','1','2'),
	('4','2','3'),
	('11','3','4'),
	('19','4','2'),
	('1','1','4'),
	('14','2','3'),
	('7','3','3'),
	('13','4','2'),
	('6','1','4'),
	('3','2','2'),
	('8','3','4'),
	('9','4','3'),
	('15','1','2'),
	('12','2','3'),
	('5','3','4'),
	('10','4','3'),
	('17','1','2'),
	('18','2','4'),
	('20','3','2'),
	('13','1','3'),
	('5','2','2'),
	('9','3','3'),
	('14','4','4'),
	('4','1','2'),
	('15','2','5'),
	('17','3','6'),
	('3','4','3'),
	('11','1','4'),
	('6','2','5'),
	('19','3','4'),
	('16','4','3'),
	('12','1','2'),
	('8','2','4'),
	('10','3','3'),
	('2','4','2'),
	('18','1','3'),
	('7','2','4'),
	('1','3','5')
;

select * from tbl_copies;

/*borrower*/
create table tbl_borrow (
	borrow_cardno varchar(50) primary key not null, 
	borrow_name varchar(50) not null,
	borrow_address varchar(50) not null,
	borrow_phone varchar(50) not null
);

insert into tbl_borrow 
	(borrow_cardno, borrow_name, borrow_address, borrow_phone)
	values 
	('12','Brad','5 Canopy Ct','554-2134'),
	('23','James','1235 Mutton Dr','554-4321'),
	('34','Cartman','3456 Deer Ln','554-5432'),
	('45','Nick','666 Gun St','554-5678'),
	('56','Jordan','6969 Fetish St','554-5379'),
	('67','Kyle','333 Face St','554-3958'),
	('78','Stan','999 Faun Spdwy','554-2345'),
	('89','Kenny','1246 Horn St','554-3478')
;

select * from tbl_borrow;

/*branch*/
create table tbl_branch (
	branch_id varchar(50) primary key not null,
	branch_name varchar(50)  not null, 
	branch_address varchar(50) not null
);

insert into tbl_branch 
	(branch_id,branch_name, branch_address)
	values 
	('1','Sharpstone','123 Fuller St'),
	('2','Central','456 Lincoln St'),
	('3','Clearstone','1020 King St'),
	('4','Broadstone','789 Arizon Ave')
;

select * from tbl_branch;

/*Alters*/

ALTER TABLE tbl_book
ADD FOREIGN KEY (book_publishername) REFERENCES tbl_publisher(publisher_name);

ALTER TABLE tbl_loans
ADD FOREIGN KEY (loans_cardno) REFERENCES tbl_borrow(borrow_cardno);

ALTER TABLE tbl_loans
ADD FOREIGN KEY (loans_branch) REFERENCES tbl_branch(branch_id);

ALTER TABLE tbl_copies
ADD FOREIGN KEY (copies_branch) REFERENCES tbl_branch(branch_id);

/*queries*/



USE db_finaldrill
GO

CREATE PROCEDURE dbo.search_losttribeatsharpstone 
AS
/*q1*/
SELECT *
FROM tbl_book 
 inner join tbl_copies ON tbl_book.book_id = tbl_copies.copies_id
  inner join tbl_branch ON tbl_copies.copies_branch = tbl_branch.branch_id
   where copies_id = '1' and copies_branch = '1'
  /*q*/
  go
exec dbo.search_losttribeatsharpstone;


CREATE PROCEDURE dbo.search_losttribeatbranch
AS
/*q2*/
SELECT *
FROM tbl_book 
 inner join tbl_copies ON tbl_book.book_id = tbl_copies.copies_id
  inner join tbl_branch ON tbl_copies.copies_branch = tbl_branch.branch_id
   where copies_id = '1' order by copies_branch asc;
    go
exec dbo.search_losttribeatbranch;

CREATE PROCEDURE dbo.search_namesofborrowers
AS
/*q3*/
select borrow_name from tbl_borrow inner join tbl_loans on tbl_borrow.borrow_cardno= tbl_loans.loans_cardno
 where tbl_loans.loans_cardno = 'null'; 
  go
exec dbo.search_namesofborrowers;

CREATE PROCEDURE dbo.search_booksinsharpstone
AS
 /*q4*/
select book_title, borrow_name, borrow_address
from tbl_loans
	INNER JOIN tbl_book ON tbl_loans.loans_id = tbl_book.book_id
	INNER JOIN tbl_branch ON tbl_loans.loans_branch = tbl_branch.branch_id
	INNER JOIN tbl_borrow ON tbl_loans.loans_cardno = tbl_borrow.borrow_cardno
WHERE loans_branch = '1' and loans_duedate = '8/30/1999';
go
exec dbo.search_booksinsharpstone;

CREATE PROCEDURE dbo.search_booksatbranch
AS
/*q5*/
select branch_name, count(loans_cardno)
from tbl_branch inner join tbl_loans
on tbl_loans.loans_branch = tbl_branch.branch_id
group by branch_name;
go
exec dbo.search_booksatbranch;

CREATE PROCEDURE dbo.search_fiveormorebooksborrowed
AS
/*q6*/
select borrow_name, borrow_address, count(loans_cardno) 
from tbl_loans inner join tbl_borrow 
on tbl_loans.loans_cardno = tbl_borrow.borrow_cardno
group by loans_cardno, borrow_name, borrow_address having count(loans_cardno) > 5
;
go
exec dbo.search_fiveormorebooksborrowed;

CREATE PROCEDURE dbo.search_stephenkingbooksatcentral
AS
 /*q7*/
 SELECT book_title, copies_number
FROM tbl_book
INNER JOIN tbl_copies ON tbl_book.book_id = tbl_copies.copies_id
INNER JOIN tbl_author ON tbl_book.book_id = tbl_author.author_id
INNER JOIN tbl_branch ON tbl_copies.copies_branch = tbl_branch.branch_id 
where author_authorname = 'Stephen King'
and copies_branch = '1';
go
exec dbo.search_stephenkingbooksatcentral;
/*good*/