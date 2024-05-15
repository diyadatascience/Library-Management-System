-- Create the database
CREATE DATABASE library;
USE library;

-- Create the tables
CREATE TABLE Book (
    book_id INT,
    book_name VARCHAR(30),
    book_author VARCHAR(30),
    book_price INT
);

CREATE TABLE Member (
    member_id INT,
    member_name VARCHAR(30),
    lib_id INT,
    member_phone VARCHAR(15),
    member_email VARCHAR(30)
);

CREATE TABLE Librarian (
    lib_id INT,
    librarian_name VARCHAR(30),
    librarian_phone VARCHAR(15),
    librarian_email VARCHAR(30)
);

CREATE TABLE Issues (
    member_name VARCHAR(30),
    book_id INT,
    issue_date DATE,
    issue_returndate DATE
);

-- Insert data into the Book table
INSERT INTO Book VALUES (1, 'Harry Potter Goblet of Fire', 'J.K Rowling', 400);
INSERT INTO Book VALUES (2, 'Percy Jackson', 'Rick Riordan', 450);
INSERT INTO Book VALUES (3, 'Sapiens', 'Yuval Noah Harari', 500);
INSERT INTO Book VALUES (4, 'Ikigai', 'Francesc Miralles', 250);
INSERT INTO Book VALUES (5, 'Richman Poorman', 'Robert Kiyosaki', 300);
INSERT INTO Book VALUES (6, 'First Things First', 'Stephen Covey', 600);
INSERT INTO Book VALUES (7, 'Atomic Habits', 'James Clear', 525);
INSERT INTO Book VALUES (8, 'IT(Novel)', 'Stephen King', 500);
INSERT INTO Book VALUES (9, 'Da Vinci Code', 'Dan Brown', 1500);
INSERT INTO Book VALUES (10, 'Lord of the Rings', 'J.R.R Tolkien', 1000);

-- Insert data into the Member table
INSERT INTO Member VALUES (1001, 'Liam', 2, '854585', 'liam123@gmail.com');
INSERT INTO Member VALUES (1002, 'Noah', 3, '034875', 'noah153@gmail.com');
INSERT INTO Member VALUES (1003, 'Elena', 1, '597298', 'elena623@gmail.com');
INSERT INTO Member VALUES (1004, 'Stephan', 2, '586357', 'stephan173@gmail.com');
INSERT INTO Member VALUES (1005, 'Rick', 3, '884765', 'rick103@gmail.com');
INSERT INTO Member VALUES (1006, 'Jeremy', 1, '971775', 'jeremy129@gmail.com');
INSERT INTO Member VALUES (1007, 'Damon', 3, '674489', 'damon1234@gmail.com');
INSERT INTO Member VALUES (1008, 'Ross', 2, '947584', 'ross166@gmail.com');
INSERT INTO Member VALUES (1009, 'Chandler', 1, '859580', 'chandler69@gmail.com');
INSERT INTO Member VALUES (1010, 'Joey', 2, '856489', 'joey181@gmail.com');

-- Insert data into the Issues table
INSERT INTO Issues VALUES ('Liam', 4, '2022-10-11', '2022-10-29');
INSERT INTO Issues VALUES ('Noah', 7, '2022-09-13', '2022-09-30');
INSERT INTO Issues VALUES ('Elena', 8, '2022-11-02', NULL);
INSERT INTO Issues VALUES ('Stephan', 2, '2022-01-12', '2022-01-30');
INSERT INTO Issues VALUES ('Rick', 1, '2022-05-10', '2022-05-29');
INSERT INTO Issues VALUES ('Jeremy', 3, '2022-03-07', '2022-03-21');
INSERT INTO Issues VALUES ('Damon', 5, '2022-04-01', NULL);
INSERT INTO Issues VALUES ('Ross', 6, '2022-12-11', '2022-12-30');
INSERT INTO Issues VALUES ('Chandler', 9, '2022-09-01', '2022-09-20');
INSERT INTO Issues VALUES ('Joey', 10, '2022-07-07', '2022-07-27');

-- Insert data into the Librarian table
INSERT INTO Librarian VALUES (1, 'John', '76897', 'john123@gmail.com');
INSERT INTO Librarian VALUES (2, 'Shaun', '99655', 'shaun153@gmail.com');
INSERT INTO Librarian VALUES (3, 'Launa', '97654', 'launa623@gmail.com');

-- Select queries
SELECT * FROM Book WHERE book_price < 500;

SELECT member_name, b.book_id, book_name 
FROM Issues i 
JOIN Book b ON i.book_id = b.book_id 
WHERE member_name = 'Chandler';

SELECT * FROM Issues WHERE issue_date < '2022-06-01';

SELECT l.lib_id, librarian_name, m.member_name 
FROM Librarian l 
JOIN Member m ON l.lib_id = m.lib_id 
WHERE l.lib_id = 2;

SELECT member_name, book_id, issue_returndate 
FROM Issues 
WHERE issue_returndate IS NULL;

-- Creating views
CREATE VIEW book_info AS 
SELECT member_name, book_id 
FROM Issues 
WHERE issue_returndate IS NOT NULL AND DATEDIFF(issue_returndate, issue_date) < 1;

CREATE VIEW information AS 
SELECT * FROM Book 
WHERE book_price < 600;

-- Creating an index
CREATE INDEX memberinfo ON Member(member_name, member_phone, member_email);

-- Select all members
SELECT * FROM Member;
