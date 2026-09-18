# SELECT

`SELECT` is used to **retrieve data from a database table**.

The two main questions are:

1. **What data do I want?** → `SELECT`
2. **Where is the data coming from?** → `FROM`

---

## Basic Syntax

```sql
SELECT column_name
FROM table_name;
```

Example:

```sql
SELECT product_name
FROM products;
```

This retrieves the `product_name` column from the `products` table.

### Mental Model

```text
SELECT = What do I want?
FROM   = Where do I get it from?
```

```mermaid
flowchart LR
    A[SELECT] -->|Choose columns| B[FROM]
    B -->|Choose table| C[Results]
```

---

## Selecting Multiple Columns

Separate column names using commas.

```sql
SELECT product_name, category, price
FROM products;
```

The same query can also be formatted across multiple lines:

```sql
SELECT
    product_name,
    category,
    price
FROM products;
```

Both versions do the same thing.

The multi-line version is often easier to read when a query becomes larger.

---

## Selecting All Columns

Use:

```text
*
```

to select every column in a table.

```sql
SELECT *
FROM products;
```

`*` means:

> Return all columns.

This is useful when exploring a table, although later it is often better to specify only the columns you actually need.

---

# LIMIT

`LIMIT` controls the **maximum number of rows returned** by a query.

```sql
SELECT *
FROM products
LIMIT 5;
```

This returns at most the first **5 rows** from the result.

### Mental Model

```text
SELECT = Which columns?
FROM   = Which table?
LIMIT  = How many rows?
```

Example:

```sql
SELECT
    product_name,
    price
FROM products
LIMIT 10;
```

---

## Why LIMIT Is Useful

`LIMIT` is useful when:

- exploring an unfamiliar table
- checking what the data looks like
- working with a very large dataset
- testing a query before returning every row

For example:

```sql
SELECT *
FROM customers
LIMIT 5;
```

can give you a quick look at the structure and contents of the `customers` table.

---

## SQL Dialects

Different database systems sometimes use different syntax for the same operation.

### SQLite

```sql
SELECT product_name
FROM products
LIMIT 5;
```

### Oracle

```sql
SELECT product_name
FROM products
WHERE ROWNUM <= 5;
```

### DB2

```sql
SELECT product_name
FROM products
FETCH FIRST 5 ROWS ONLY;
```

For this learning environment, we are using **SQLite**, so:

```sql
LIMIT 5;
```

is the syntax to practise.

---

## Semicolon

A semicolon:

```text
;
```

marks the end of an SQL statement.

```sql
SELECT *
FROM products;
```

It is good practice to include it.

---

## Quick Reference

| Keyword | Purpose |
|---|---|
| `SELECT` | Choose which columns to return |
| `FROM` | Choose which table to retrieve data from |
| `*` | Select every column |
| `,` | Separate multiple columns |
| `LIMIT` | Restrict the number of rows returned |
| `;` | End an SQL statement |

---

## Basic Pattern

```sql
SELECT column_1, column_2
FROM table_name
LIMIT number_of_rows;
```

### Remember

> `SELECT` chooses **columns**.  
> `FROM` chooses the **table**.  
> `LIMIT` chooses how many **rows** are returned.