-- 01-select-practice.sql
-- Practice only: no answers are included.
--
-- Use this file after learning SELECT and FROM.
-- Try each task yourself before checking notes.

-- ============================================================
-- LEVEL 1: BASIC SELECT
-- ============================================================

-- 1. Return every column from the customers table.
SELECT *
FROM customers;

-- 2. Return every column from the products table.

SELECT * 
FROM products;

-- 3. Return only first_name and last_name from customers.
SELECT
    first_name,
    last_name
FROM customers;

-- 4. Return only product_name and price from products.
SELECT
    product_name,
    price
FROM products;

-- 5. Return city and country from customers.
SELECT
    city,
-- ============================================================
-- LEVEL 2: CHOOSE THE RIGHT COLUMNS
-- ============================================================

-- 6. A colleague only needs customer names and email addresses.
--    Return only the columns they need.
SELECT
    first_name,
    last_name,
    email
FROM customers;

-- 7. A product catalogue only needs the product name,
--    category, and price. Return those columns.
SELECT
    product_name,
    category,
    price
FROM products;

-- 8. Return the order ID, order date, and status from orders.
SELECT
    order_id,
    order_date,
    status
FROM orders;

-- 9. Return the product ID and quantity from order_items.
SELECT 
    product_id,
    quantity
FROM order_items;

-- ============================================================
-- LEVEL 3: THINK LIKE AN ANALYST
-- ============================================================

-- 10. Imagine a manager asks:
--     "Show me the basic location information for our customers."
--     Decide which columns are useful and write the query.
SELECT
    first_name,
    last_name,
    country,
    city
FROM customers;

-- 11. Imagine someone asks:
--     "I need a simple product price list."
--     Decide which columns are useful and write the query.
SELECT
    product_name,
    price
FROM products;

-- 12. Without using SELECT *,
--     return all the information you think would be useful
--     when reviewing an order.
SELECT 
    order_id,
    customer_id,
    order_date,
    status
FROM orders;


-- ============================================================
-- OPTIONAL EXPLORATION
-- ============================================================

-- After completing the tasks, experiment:
--
-- - Change the order of columns in SELECT.
-- - Select the same column twice and see what happens.
-- - Deliberately misspell a table or column name.
-- - Compare SELECT * with selecting named columns.
