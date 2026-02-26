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

--Covered all the major constraints of SQL
