/*
A stored procedure is a saved SQL block that can be executed later. It’s useful
when you want to encapsulate logic that can be reused multiple times — like
queries, updates, or conditional operations

By default, MySQL uses ; to end SQL statements.
But when defining stored procedures, we use ; inside the procedure as well. This
can confuse MySQL. To avoid this, we temporarily change the delimiter (e.g. to
$$ or // ) while creating the procedure.
*/

DELIMITER $$
CREATE PROCEDURE procedure_name()
BEGIN
-- SQL statements go here
END$$
DELIMITER ;
--After the procedure is created, we reset the delimiter back to ; 

--Creating a Procedure with Input Parameters
DELIMITER $$
CREATE PROCEDURE AddUser(
 IN p_name VARCHAR(100),
 IN p_email VARCHAR(100),
 IN p_gender ENUM('Male', 'Female', 'Other'),
 IN p_dob DATE,
 IN p_salary INT
)
BEGIN
 INSERT INTO users (name, email, gender, date_of_birth, salary)
 VALUES (p_name, p_email, p_gender, p_dob, p_salary);
END$$
DELIMITER ; --This creates a procedure named AddUser that accepts five input parameters.

--imp: Calling the Procedure
CALL AddUser('Kiran Sharma', 'kiran@example.com', 'Female', '1994-06-15', 72000);
--This will insert the new user into the users table.

--Input parameters are declared using the IN keyword.
--Stored procedures are stored in the database and can be reused.




/*
TRIGGERS:

A trigger is a special kind of stored program that is automatically executed
(triggered) when a specific event occurs in a table — such as INSERT , UPDATE , or DELETE .

Triggers are commonly used for:
Logging changes
Enforcing additional business rules
Automatically updating related data
*/

--this is the basic structure of trigger:
CREATE TRIGGER trigger_name
AFTER INSERT ON table_name
FOR EACH ROW
BEGIN
-- statements to execute
END;

--example: IMP ,
-- Like we are adding up the hourly salary of a employee then the monthly pay package of that employee is automatically updated

--Dropping a TRIGGER:
DROP TRIGGER IF EXISTS after_user_insert;

--NEW.column Refers to the new row (for INSERT , UPDATE )
--OLD.column Refers to the old row (for UPDATE , DELETE )



--More on SQL:

--logical operation : NOT
--NOT Reverses a condition NOT gender = 'Female'

--IMP:
--Wildcards are used with the LIKE operator for pattern matching in text.

-- % Matches any sequence WHERE name LIKE 'A%' (starts with A)
-- _ Matches a single character WHERE name LIKE '_a%' (second letter is ‘a’)

--LIMIT is used to limit the number of rows returned. OFFSET skips a number of rows before starting to return rows.
SELECT * FROM users
ORDER BY id
LIMIT 5 OFFSET 10;
--This skips the first 10 rows and returns the next 5.

-- TRUNCATE keyword: remove all the rows from the table but keeps the table structure, It is faster than DELETE 
--Cannot be rolled back

/*
This is all about SQL 
I hope this repo helps you in understanding the concepts of SQL 
I have written all these queries at MySQL WorkBench
Mainly all the major concepts of SQL are covered in this repository

THANK YOU!
CHETAN URF ISHANT
