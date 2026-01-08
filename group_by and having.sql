/*
The GROUP BY clause is used to group rows that have the same values 
in specified columns. It is typically used with aggregate functions like COUNT , SUM ,
AVG , MIN , or MAX .
*/

-- example: Average Salary by Gender
SELECT gender, AVG(salary) AS average_salary
FROM users
GROUP BY gender;

-- having clause: Filtering Groups
--Let’s say we only want to show genders where the average salary is greater than ₹75,000.
SELECT gender, AVG(salary) AS avg_salary
FROM users
GROUP BY gender
HAVING AVG(salary) > 75000;

-- having is used in place of WHERE after the GROUP BY
/*
Why not WHERE ?
WHERE is used before grouping.
HAVING is used after groups are formed — it’s the only way to filter
aggregated values.
*/

-- Use GROUP BY to organize data, and HAVING to filter those groups based on aggregate conditions.

--ROLLUP:
--To get subtotals and grand totals, we can use ROLLUP 
--example:
SELECT gender, COUNT(*) AS total_users
FROM users
GROUP BY gender WITH ROLLUP;
--This will give you a count of users by gender, along with a grand total for all users.

/*
Brief summary:
GROUP BY and HAVING are used in SQL to summarize and filter grouped data. 
GROUP BY combines rows that have the same values in one or more columns and 
allows us to apply aggregate functions like SUM, COUNT, or AVG on each group. 
For example, we can group employees by department and calculate the total salary 
for each department. HAVING is used to filter these groups after aggregation. 
Unlike WHERE, which filters rows before grouping, HAVING works on aggregated results. 
For instance, it can be used to display only those departments whose total salary exceeds a certain amount.
*/

--Chetan Urf Ishant
