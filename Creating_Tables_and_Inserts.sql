CREATE DATABASE LibraryDatabase

CREATE TABLE Book (
BookID INT PRIMARY KEY, 
Title varchar (200) NOT NULL, 
PublisherName varchar (200) NOT NULL, 
);
CREATE TABLE Book_Authors (
BookID INT PRIMARY KEY, 
AuthorName varchar (200) NOT NULL,
);
CREATE TABLE Book_Copies(
BookID INT, 
BranchID INT NOT NULL, 
Copies INT NOT NULL, 
);
CREATE TABLE Library_Branch (
BranchID INT NOT NULL, 
BranchName varchar (200) NOT NULL, 
BranchAddress varchar(300) NOT NULL
); 
CREATE TABLE BOOK_LOANS (
BookID INT NOT NULL, 
BranchID INT NOT NULL, 
CardNumber INT NOT NULL, 
CheckedOut varchar(100) NOT NULL, 
DueDate varchar(100) NOT NULL
); 
CREATE TABLE Borrower (
CardNumber INT PRIMARY KEY,
BorrowerName varchar (100) NOT NULL, 
BorrowerAddress varchar (300) NOT NULL, 
BorrowerPhone varchar (20) NOT NULL 
); 
CREATE TABLE Publisher (
Name varchar(100) PRIMARY KEY,
PublisherAddress varchar (300),
Phone varchar (20)
);

SELECT * FROM Book 
SELECT * FROM Publisher
SELECT * FROM Book_Authors 
SELECT * FROM Book_Copies 
SELECT * FROM Library_Branch
SELECT * FROM BOOK_LOANS
SELECT * FROM Borrower


/* Here I insert each book, with it's ID as well */

INSERT INTO Book
VALUES 
(1, 'The Lost Tribe', 'Lighthouse Publishing'),
(2, 'Treasure Island','Master Publishing'),
(3, 'Swiss Family Robinson', 'Lighthouse Publishing'),
(4, 'Captains Courageous', 'Royal Publishing'),
(5, 'She', 'Royal Publishing'),
(6,'The Lost World', 'Sunset Publishing'),
(7,'The Man Who Would Be King','Sunset Publishing' ),
(8,'Midsummer Nights Dream', 'Master Publishing'),
(9,'Jurrasic Park', 'Sunset Publishing'),
(10,'Harry Potter and the Sorcerers Stone', 'Sunset Publishing'),
(11,'Everyday French Grammar', 'Sunset Publishing'),
(12,'Manners', 'Royal Publishing'),
(13,'Programming is fun', 'Lighthouse Publishing'),
(14,'IT', 'Sunset Publishing'),
(15,'Needful Things', 'Sunset Publishing'),
(16,'Investing Made Simple', 'Royal Publishing'),
(17,'Cooking with Vegetables', 'Sunset Publishing'),
(18,'My life as a watermelon farmer: A memoir', 'Master Publishing'),
(19,'Computer Science 101', 'Royal Publishing'),
(20,'Romeo and Juliet', 'Master Publishing')

INSERT INTO Publisher 
VALUES
('Master Publishing', '33 Popplesdorfer St., Munich, Germany', '+12 823-127-0223'),
('Royal Publishing', '62734 King St., London, England', '+2 334-234-2353'),
('Sunset Publishing', '777 Yellow Ave., Miami, Florida', '123-234-2112'),
('Lighthouse Publishing', '8823 Drury Lane, Portland, Maine', '273-723-2734')

INSERT INTO Book_Authors
VALUES 
(1, 'Joe Smith'),
(2, 'Louis Stevenson'),
(3, 'John David Wyss'),
(4, 'Rudyard Kipling'),
(5, 'Rider Haggard'),
(6,'Arthur Conan Doyle'),
(7,'Rudyard Kipling'),
(8,'William Shakespeare'),
(9,'Michael Crichton'),
(10,'J.K. Rowling'),
(11,'Pierre LeFou'),
(12,'Baron Olaf Vertoy'),
(13,'Ada Lovelace'),
(14,'Stephen King'),
(15,'Stephen King'),
(16,'Warren Buffet'),
(17,'Chef Jean Costeau'),
(18,'Randy Smith'),
(19,'Dr. Paul Binary'),
(20,'William Shakespeare')

/*Here I provide information about each library branch*/

INSERT INTO library_branch 
VALUES 
(1, 'Sharpstown', '222 Hubert Ave.'),
(2, 'Central', '8765 Central Street'),
(3, 'Jefferson', '66 Book Lane'),
(4, 'Leonard', '7638 Leonard Street')

/* Here I indicate how many copies of each book each branch has */

INSERT INTO Book_Copies
VALUES
(1, 1, 4),
(1, 2, 2), 
(1, 3, 0),
(1, 4, 3), 
(2, 1, 4), 
(2, 2, 2), 
(2, 3, 2),
(2, 4, 3),
(3, 1, 4), 
(3, 2, 2), 
(3, 3, 2),
(3, 4, 0),
(4, 1, 4), 
(4, 2, 2), 
(4, 3, 2),
(4, 4, 3), 
(5, 1, 4), 
(5, 2, 2), 
(5, 3, 2),
(5, 4, 3), 
(6, 1, 4), 
(6, 2, 2), 
(6, 3, 2),
(6, 4, 0), 
(7, 1, 4), 
(7, 2, 2), 
(7, 3, 2),
(7, 4, 3),
(8, 1, 4), 
(8, 2, 5), 
(8, 3, 2),
(8, 4, 3),
(9, 1, 4), 
(9, 2, 1), 
(9, 3, 2),
(9, 4, 3), 
(10, 1, 4), 
(10, 2, 1), 
(10, 3, 0),
(10, 4, 3),
(11, 1, 4), 
(11, 2, 2), 
(11, 3, 2),
(11, 4, 3), 
(12, 1, 4), 
(12, 2, 2), 
(12, 3, 2),
(12, 4, 3), 
(13, 1, 4), 
(13, 2, 2), 
(13, 3, 2),
(13, 4, 3), 
(14, 1, 1), 
(14, 2, 2), 
(14, 3, 2),
(14, 4, 3),
(15, 1, 4), 
(15, 2, 2), 
(15, 3, 2),
(15, 4, 3), 
(16, 1, 4), 
(16, 2, 2), 
(16, 3, 5),
(16, 4, 3), 
(17, 1, 4), 
(17, 2, 2), 
(17, 3, 2),
(17, 4, 3), 
(18, 1, 4), 
(18, 2, 2), 
(18, 3, 2),
(18, 4, 3), 
(19, 1, 1), 
(19, 2, 2), 
(19, 3, 0),
(19, 4, 3),
(20, 1, 4), 
(20, 2, 2), 
(20, 3, 1),
(20, 4, 3) 

/* Here I insert when book's where loaned out and to whom */

 INSERT INTO BOOK_LOANS 
 VALUES 
(1, 1, 891923, '06/01/17', '07/01/17'),
(1, 4, 123472, '06/02/17', '07/02/17'),
(1, 2, 372734, '07/09/17', '08/09/17'),
(1, 3, 123472, '07/15/17', '08/15/17'),
(2, 2, 781234, '07/15/17', '08/15/17'),
(18, 1, 372734, '07/15/17', '08/15/17'),
(4, 1, 372734, '07/21/17', '08/21/17'),
(19, 1, 123472, '07/21/17', '08/21/17'),
(6, 1, 372734, '07/21/17', '08/21/17'),
(9, 3, 333345, '07/22/13', '08/22/17'),
(2, 1, 372734, '08/01/17', '09/01/17'),
(2, 4, 891923, '08/12/17', '09/12/17'),
(10, 1, 767211, '08/13/17', '09/13/17'),
(12, 3, 372734, '09/15/17', '10/15/17'),
(12, 1, 333345, '11/01/17', '12/01/17'),
(13, 1, 183743, '01/01/18', '02/01/18'),
(7, 1, 183743, '01/02/18', '02/02/18'),
(9, 1, 767211, '02/01/18', '03/01/18'),
(19, 4, 372734, '02/01/18', '03/01/18'),
(7, 1, 372734, '02/01/18', '03/01/18'),
(8, 1, 887234, '02/01/18', '03/01/18'),
(10, 1, 372734, '02/01/18', '03/01/18'),
(20, 2, 333345, '03/01/18', '04/01/18'),
(14, 2, 767211, '03/01/18', '04/01/18'),
(11, 2, 227134, '03/11/18', '04/11/18'),
(9, 2, 891923, '03/21/18', '04/21/18'),
(2, 2, 183743, '04/27/18', '05/27/18'),
(1, 1, 887234, '04/29/18', '05/29/18'),
(4, 2, 891923, '04/29/18', '07/29/18'),
(5, 1, 887234, '04/30/18', '07/30/18'),
(9, 1, 123472, '04/30/18', '07/30/18'),
(10, 1, 333345, '05/03/18', '06/03/18'),
(10, 1, 227134, '05/03/18', '06/03/18'),
(19, 1, 781234, '05/03/18', '06/03/18'),
(17, 1, 767211, '05/19/18', '06/19/18'),
(3, 2, 372734, '07/01/18', '08/01/18'),
(8, 4, 781234, '07/01/18', '08/01/18'),
(9, 4, 891923, '07/01/18', '08/01/18'),
(11, 1, 333345, '07/01/18', '08/01/18'),
(12, 1, 372734, '07/02/18', '08/02/18'),
(20, 3, 887234, '07/02/18', '08/02/18'),
(19, 1, 887234, '07/02/18', '08/02/18'),
(13, 3, 372734, '07/11/18', '08/11/18'),
(11, 1, 767211, '07/13/18', '08/13/18'),
(2, 4, 891923, '07/13/18', '08/13/18'),
(7, 1, 887234, '07/23/18', '08/23/18'),
(5, 3, 891923, '07/23/18', '08/23/18'),
(6, 1, 123472, '07/24/18', '08/24/18')

/* Here I insert Borrower values */

INSERT INTO Borrower 
VALUES 
(372734, 'Ricky Johnson', '123 Sunset Lane', '777-283-1234'),
(767211, 'Damian Washington', '54 Eagle Drive', '777-222-4322'),
(891923, 'Joe Chou', '82812 W. River Avenue', '777-222-1234'),
(781234, 'Elaine Chou', '82812 W. Rive Avenue', '777-222-1234'),
(333345, 'Sundar Singh', '902 Cherry Street', '777-829-1234'),
(123472, 'Beverly Clifton', '926 Cherry Street', '777-212-8921'),
(227134, 'Sally Harley', '1234 E.River Avenue', '777-283-8373'),
(187462, 'Bob Johnson', '2234 Central Street', '777-283-1829'),
(887234, 'Sally Johnson', '2234 Central Street', '777-283-1829'),
(183743, 'Robin Donnahue', '66 Leonard Street', '777-333-2383')
