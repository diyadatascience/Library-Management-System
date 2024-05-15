# Library Management System

This repository contains SQL scripts for creating and managing a library database. The database includes tables for books, members, librarians, and book issue records. The scripts cover table creation, data insertion, querying, views, and indexing to ensure efficient data handling and retrieval.

#### Project Overview
The goal of this project is to create a structured and efficient library management system using SQL. The database is designed to store information about books, members, librarians, and book issues, with capabilities for performing various operations and queries.

### Contents
- **Create Database and Tables**: SQL script to create the `library` database and tables for `Book`, `Member`, `Librarian`, and `Issues`.
- **Data Insertion**: Scripts to insert initial data into the `Book`, `Member`, `Librarian`, and `Issues` tables.
- **Select Queries**: Example queries to retrieve specific information from the database.
- **Views**: Scripts to create views for easier access to specific data sets.
- **Indexing**: Scripts to create indexes for improving query performance.

### Detailed Description

1. **Database and Tables Creation**
    - **Book**: Stores information about books, including `book_id`, `book_name`, `book_author`, and `book_price`.
    - **Member**: Stores member details, including `member_id`, `member_name`, `lib_id`, `member_phone`, and `member_email`.
    - **Librarian**: Stores librarian details, including `lib_id`, `librarian_name`, `librarian_phone`, and `librarian_email`.
    - **Issues**: Stores records of books issued to members, including `member_name`, `book_id`, `issue_date`, and `issue_returndate`.

2. **Data Insertion**
    - Populates the tables with sample data for books, members, librarians, and issue records.

3. **Select Queries**
    - Queries to retrieve books with prices less than 500.
    - Query to retrieve books issued to a specific member (e.g., Chandler).
    - Query to retrieve issues before a specific date.
    - Query to retrieve members managed by a specific librarian.
    - Query to retrieve books currently issued and not yet returned.

4. **Views**
    - **book_info**: A view to get member names and book IDs for issues returned within a day.
    - **information**: A view to get books with prices less than 600.

5. **Indexing**
    - Creates an index on the `Member` table to improve query performance on `member_name`, `member_phone`, and `member_email`.
