Select min(salary) as min_slry, max(salary) as max_slry from newyear_data;
Select SUM(salary) AS total_payroll FROM newyear_data;
Select AVG(salary) AS avg_salary FROM newyear_data;
SELECT gender, AVG(salary) AS avg_salary FROM newyear_data GROUP BY gender;
Select name, length(name) as name_len from newyear_data;
Select name, lower(name) as lowercase_name from newyear_data;
Select name, upper(name) as uppercase_name from newyear_data;
Select Concat(roll_no, '<', email, '>') as contact_user_roll from newyear_data;
Select Now();
Select * from newyear_data;
-- Alter table newyear_data add column DOB date;
-- UPDATE newyear_data SET dob = '2003-01-24' WHERE roll_no = 10;
SELECT name, roll_no, DATEDIFF(CURDATE(), DOB) AS days_lived FROM newyear_data;
SELECT roll_no, MOD(roll_no, 2) AS remainder FROM newyear_data;
Select name,gender, IF(gender='Female','Yes','No') AS is_female from newyear_data;


-- Covered the functions of SQL which are widely used.

/*
SQL functions are built-in routines used to perform calculations, manipulate data, and return specific results within queries. 
They help simplify complex operations and improve query readability. 
SQL functions are mainly classified into two types: Single-row functions and Aggregate functions. 
Single-row functions operate on each row individually (e.g., UPPER(), LOWER(), ROUND()), 
while aggregate functions work on multiple rows and return a single value (e.g., SUM(), COUNT(), AVG(), MAX(), MIN()). 
They are commonly used with SELECT, WHERE, and GROUP BY clauses to process and analyze data efficiently.


SQL functions are predefined or user-defined operations that take input values, process them, and return a result. 
They are used to perform calculations and manipulate data. 
Functions are mainly of two types: aggregate functions (like COUNT, SUM) that work on multiple rows, 
and scalar functions (like UPPER, ROUND) that operate on individual values.
*/
