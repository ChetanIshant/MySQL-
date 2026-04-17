/*
Constraints in SQL are rules applied to table columns to enforce data integrity and ensure the accuracy and reliability of stored data. 
Common constraints include PRIMARY KEY (uniquely identifies each record), FOREIGN KEY (maintains relationships between tables), 
NOT NULL (prevents empty values), UNIQUE (ensures all values are different), CHECK (validates conditions), and DEFAULT (assigns a default value when none is provided).
*/

CREATE TABLE newyear_data (roll_no INT PRIMARY KEY, email VARCHAR(100) UNIQUE);
CREATE TABLE newyear_data (roll_no INT PRIMARY KEY, name VARCHAR(100) NOT NULL);
ALTER TABLE newyear_data ADD CONSTRAINT chk_dob CHECK (date_of_birth > '2000-01-01'); 
CREATE TABLE users (
roll_no INT PRIMARY KEY, is_active BOOLEAN DEFAULT TRUE);
CREATE TABLE users (roll_no INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(100));

/*
Constraint          Purpose
UNIQUE              Prevents duplicate values   
NOT NULL            Ensures value is not NULL
CHECK               Restricts values using a condition
DEFAULT             Sets a default value
PRIMARY KEY         Uniquely identifies each row
AUTO_INCREMENT      Automatically generates unique numbers

Constraints are rules applied to data to maintain accuracy, consistency, and integrity in a system, especially in databases. 
They restrict the type of data that can be inserted or updated in a table. 
Common constraints include PRIMARY KEY, FOREIGN KEY, UNIQUE, NOT NULL, and CHECK. 
These ensure valid relationships between tables, prevent duplicate entries, and enforce specific conditions, 
helping maintain reliable and structured data throughout the application.
*/

--SQL Constraints are rules applied to table columns to enforce data integrity and ensure accuracy of data in a database.

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 18),
    dept_id INT,
    status VARCHAR(20) DEFAULT 'active',
    FOREIGN KEY (dept_id) REFERENCES departments(id)
);


--Covered all the major constraints of SQL


