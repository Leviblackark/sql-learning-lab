-- ============================================================
-- CREATE TABLE PRACTICE
-- ============================================================

-- TASK 1: Create a table called practice_book

CREATE TABLE practice_books (
    book_id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    author TEXT NOT NULL,
    price REAL NOT NULL,
    description TEXT
);

SELECT *
FROM practice_books;

-- check table structure
PRAGMA table_info(practice_books);

-- Confirm table exists
SELECT name
FROM sqlite_master
WHERE type = 'table';

-- =========================================================
-- INSERT INTO PRACTICE 
-- =========================================================

--- Insert values into a empty table - add a book

INSERT INTO practice_books (
    book_id,
    title,
    author,
    price,
    description
)
VALUES (
    1,
    'The Hobbit',
    'J.R.R. Tolkien',
    9.99,
    NULL
);

SELECT *
FROM practice_books;


INSERT INTO practice_books (
    book_id,
    title,
    author,
    price,
    description
)

VALUES (
    2,
    '1984',
    'George Orwell',
    8.49,
    'Dystopian novel'
);

SELECT *
FROM practice_books;

-- ==========================================================
-- CONSTRAINT PRACTICE
-- ==========================================================

-- TEST The constraints

-- fail because primary key should be unique
INSERT INTO practice_books (
    book_id,
    title,
    author,
    price,
    description
)
VALUES (
    1,
    '1984',
    'George Orwell',
    8.49,
    'Dystopian novel'
);

-- ============================================================
-- TEMPORARY TABLE PRACTICE
-- ============================================================

-- Task 1:
-- Create a temporary table called affordable_products.
-- Include product_name, category and price.
-- Only include products where price is less than 50.

CREATE TEMP TABLE affordable_products AS
SELECT
    product_name,
    category,
    price
FROM products
WHERE price < 50;

SELECT *
FROM affordable_products;

SELECT *
FROM products;