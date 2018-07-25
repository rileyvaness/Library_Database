
--QUESTION 1: 
--How many copies of the book titled "The Lost Tribe" 
--are owned by the library branch whose name is "Sharpstown"? 

SELECT Book.Title, Book_Copies.Copies, Library_Branch.BranchName
FROM Book
INNER JOIN Book_Copies
ON Book.BookID = Book_Copies.BookID
INNER JOIN Library_Branch
On Book_Copies.BranchID = Library_Branch.BranchID
WHERE Book.Title = 'The Lost Tribe' AND Library_Branch.BranchName = 'Sharpstown'

--QUESTION 2:
--How  many copies of the book titled "The Lost Tribe" are owned by each library branch? 
SELECT Library_Branch.BranchName, Book.Title, Book_Copies.Copies
FROM Library_Branch
INNER JOIN Book_Copies
ON Library_Branch.BranchID = Book_Copies.BranchID
INNER JOIN Book
ON Book_Copies.BookID = Book.BookID
WHERE Book.Title = 'The Lost Tribe'

--QUESTION 3: 
 --Retrieve the names of all borrowers who do not have any books checked out.
 SELECT * FROM Borrower 
 LEFT JOIN BOOK_LOANS
 ON Borrower.CardNumber = BOOK_LOANS.CardNumber
 WHERE BOOK_LOANS.BookID IS NULL

 --QUESTION 4: 
 --For each book that is loaned out from the "Sharpstown" branch and
 -- whose DueDate is today, retrieve the book title, the borrower's name, 
 --and the borrower's address.
 
SELECT Book.Title, Borrower.BorrowerName, Borrower.BorrowerAddress
FROM BOOK_LOANS 
INNER JOIN Borrower
ON BOOK_LOANS.CardNumber = Borrower.CardNumber
INNER JOIN Book
ON BOOK_LOANS.BookID = Book.BookID
WHERE BOOK_LOANS.BranchId = 1 AND BOOK_LOANS.DueDate = '07/25/18'

 --QUESTION 5: 
 -- For each library branch, retrieve the branch name 
 --and the total number of books loaned out from that branch.
 -
 
 SELECT Library_Branch.BranchName, COUNT(BOOK_LOANS.BranchID) 
 FROM Library_Branch
 INNER JOIN BOOK_LOANS 
 ON Library_Branch.BranchID = BOOK_LOANS.BranchID
 GROUP BY Library_Branch.BranchName, BOOK_LOANS.BranchID

 --QUESTION 6:
 --Retrieve the names, addresses, and the number of books checked 
 --out for all borrowers who have more than five books checked out.
 
 SELECT Borrower.BorrowerName, Borrower.BorrowerAddress, COUNT(BOOK_LOANS.CardNumber) 
 FROM Borrower
 INNER JOIN BOOK_LOANS
 ON Borrower.CardNumber = BOOK_LOANS.CardNumber
 GROUP BY Borrower.BorrowerName, Borrower.BorrowerAddress
 HAVING COUNT (BOOK_LOANS.CardNumber) > 3;

 --QUESTION 7: 
 --For each book authored (or co-authored) by "Stephen King", retrieve the title 
 --and the number of copies owned by the library branch whose name is "Central".

 SELECT Book.Title, Book_Copies.Copies, Library_Branch.BranchName
 FROM Book 
 INNER JOIN Book_Authors 
 ON Book.BookID = Book_Authors.BookID
 INNER JOIN Book_Copies
 ON Book.BookID = Book_Copies.BookID
 INNER JOIN Library_Branch
 ON Book_Copies.BranchID = Library_Branch.BranchID
 WHERE Book_Authors.AuthorName = 'Stephen King' AND Library_Branch.BranchName = 'Central'
