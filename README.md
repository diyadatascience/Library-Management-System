# Library Management System

This repository contains SQL scripts for creating and managing a library database. The database includes tables for books, members, librarians, and book issue records. The scripts cover table creation, data insertion, querying, views, and indexing to ensure efficient data handling and retrieval.

#### Project Overview
The goal of this project is to create a structured and efficient library management system using SQL. The database is designed to store information about books, members, librarians, and book issues, with capabilities for performing various operations and queries.

#### Contents
- **Library Management.pptx**: A PowerPoint presentation that details the library management system. It includes an overview of the project, the database schema, and key features of the system.
- **Library script.sql**: The SQL script for creating the library database, including table creation, data insertion, select queries, view creation, and indexing.

#### Detailed Description

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
