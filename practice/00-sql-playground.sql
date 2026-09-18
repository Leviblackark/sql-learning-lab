-- 1. Display every column from the customers table.
SELECT *
FROM customers; 

-- 2. Display only first_name and last_name from customers.
SELECT first_name, last_name
FROM customers;

-- 3. Display product_name and price from products.
SELECT *
FROM products;

SELECT product_name, price
FROM products;

-- 4. Display every column from products,
--    but return only 5 rows.
SELECT *
FROM products
LIMIT 5;

-- 5. Display first_name, city and country from customers,
--    but return only 10 rows.

SELECT 
    first_name,
    city,
    country
FROM customers
LIMIT 10;