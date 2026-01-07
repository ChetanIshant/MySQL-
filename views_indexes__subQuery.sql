-- VIEWS:
-- views are the virtual table, they are not duplicates
-- views are mainly used for typical SQL queries
-- it always reflects the current data in the base tables
/*
used when you want :
1. to simplify complex queries
2. to reuse logic
3. a “live snapshot” of filtered data
*/

-- implementation:
CREATE VIEW high_salary_users AS
SELECT id, name, salary
FROM users
WHERE salary > 70000;

SELECT * FROM high_salary_users;

-- when we update the data in the base table it is automatically updated in the virtual table/view_table

-- dropping a view_table
DROP VIEW high_salary_users;


-- MySQL Indexes:
/*
Indexes in MySQL are used to speed up data retrieval. 
They work like the index of a book helping the database engine find rows faster, especially for searches, filters, and joins.
main -- unnecessary indexing may harm the data and slow-down the speed of DELETE, INSERT, UPDATE slightly
*/

SHOW INDEXES FROM users; -- to see existing indexes in the table
CREATE INDEX idx_email ON users(email); -- creating single-column index

--Multi-column index:
--If we often query users using both gender and salary of something else, a multi-column index is more efficient than separate indexes.

CREATE INDEX idx_gender_salary ON users(gender, salary);  -- creating multi-column index
SELECT * FROM users
WHERE gender = 'Female' AND salary > 70000; -- implementation

-- remember that index order also matters in multi-column indexing

-- dropping a index:
DROP INDEX idx_email ON users;



-- ## Sub-Queries in MySQL:
/*
This is one of the most important part of MySQL, as they are the queries that are nested inside another query
Sub-Queries are useful for breaking down the complex problems into smaller parts
used in :
SELECT 
WHERE
FROM
*/

--most asked SQL question in interviews is :
--Find the second largest salary form the table?
-- this question is easily solved by sub-query concept:

SELECT MAX(salary)
FROM employees
WHERE salary < (SELECT MAX(salary) FROM users);

-- apart from these types of queries, sub-queries are very efficient to handle complex queries:
-- most common sub-query:
SELECT id, name, salary
FROM users
WHERE salary > (SELECT AVG(salary) FROM users);


-- one example of a bit of complex query :
SELECT id, name, referred_by_id
FROM users
WHERE referred_by_id IN (SELECT id FROM users WHERE salary > 75000);

-- Subqueries are powerful tools when filtering based on computed or dynamic conditions.


-- Chetan Urf Ishant
