/* 
Basics : 
MySQL Workbench is a visual tool for database architects, developers, and DBAs.
A Database Management System (DBMS) is software that interacts with end users, applications, and the database itself to capture and analyze data.
*/
CREATE DATABASE sql_first_database; --creating a database

USE startersql; --to use the same database for further queries    

CREATE TABLE  default_table(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
);
-- here we created a table in database named default_table which includes multiple columns with different constraints

DROP DATABASE sql_first_database; --we can drop/delete a database with this query

/* Major Data Types:
INT : Integer type, used for whole numbers.
VARCHAR(100) : Variable-length string, up to 100 characters.
ENUM : A string object with a value chosen from a list of permitted values. eg: gender ENUM('Male', 'Female', 'Other')
DATE : Stores date values. eg : date_of_birth DATE */

-- most used sql query:
SELECT * FROM default_table; -- used to extract all the columns from the following table
SELECT name, email FROM users; --used to select specific columns

--modifications can be done with the help of alter queries:
ALTER TABLE default_table ADD COLUMN is_active BOOLEAN DEFAULT TRUE;
ALTER TABLE users MODIFY COLUMN name VARCHAR(150);

-- insertion in table:
INSERT INTO default_table VALUES(1, 'Alice', 'alice@example.com', 'Female', '1995-05-14', DEFAULT); --inserted value in table(default_value)
--This method requires you to provide values for all columns in order, except columns with default values or AUTO_INCREMENT .
--insert multiple rows at once:
INSERT INTO default_table (name, email, gender, date_of_birth) VALUES
('Chetan', 'charlie@example.com', 'Male', '1988-02-17'),
('Dheeraj', 'david@example.com', 'Female', '2000-08-09'),
('Dev', 'eva@example.com', 'Male', '1993-12-30');
-- **This is more efficient than inserting rows one by one**

--updating in table:
UPDATE table_name
SET column1 = value1, column2 = value2 
WHERE condition; --this is basic syntax

--example query for updation:
UPDATE users
SET salary = salary + 10000
WHERE salary < 60000;

--deletion:
DELETE FROM users
WHERE id = 3; --example sytax

--delete all rows but the table structure remains same:
DELETE FROM users;

/*
"I hope the shared content is clear and informative."
Chetan Urf Ishant 
*/
