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

--Covered all the major constraints of SQL
