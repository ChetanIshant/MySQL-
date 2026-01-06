-- In SQL, JOINs are used to combine rows from two or more tables based on related columns — usually a foreign key in one table referencing a primary key in another.

-- SQL Joins are of 4 types : INNER, LEFT, RIGHT, INNER

-- INNER JOIN is the simpelest JOIN which returns only the matching rows from both tables
SELECT users.name, addresses.city
FROM users
INNER JOIN addresses ON users.id = addresses.user_id; --non-matching data is excluded

-- LEFT JOIN keeps the left table on priority and must take all the data of left table, and in the right side table the data which is matching is extracted only 
-- Returns all rows from the left table (users), and matching rows from the right table (addresses ). If no match is found, NULLs are returned.
SELECT users.name, addresses.city
FROM users
LEFT JOIN addresses ON users.id = addresses.user_id;

-- RIGHT JOIN Returns all rows from the right table (users) and matching rows from the left table (addresses), If no match is found, NULLs are returned
SELECT users.name, addresses.city
FROM users
RIGHT JOIN addresses ON users.id = addresses.user_id;

-- INNER JOIN, this is the type of JOIN where the same is JOINed to itself
--This is useful when rows in the same table are related to each other. For example, when users refer other users, and we store the ID of the person who referred them in the same users table.
SELECT 
  a.id,
  a.name AS user_name,
  b.name AS referred_by
FROM users a
INNER JOIN users b ON a.referred_by_id = b.id;
--users with NULL value is excluded when we use INNER JOIN, we can also use LEFT JOIN to overcome this so that the NULL value holders is also visible in the final table.
--here a and b are the instances of table users / they are also users table
--the syntax is little bit complex, but it is usable in case of dealing with data which contains referrals.
--In referral-based relationships, store the referrer’s id in the same table.
--Use aliases like a and b to differentiate the two instances of the same table.




