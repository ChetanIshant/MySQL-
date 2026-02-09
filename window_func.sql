-- Window functions are special SQL functions that let you perform calculations across a set of related rows without collapsing them into a single row.

function_name (expression)
OVER (
  PARTITION BY column_name
  ORDER BY column_name
)


-- common window functions are:
-- ROW NUMBER():
-- Gives a unique number to each row in a partition
SELECT name, salary,
ROW_NUMBER() OVER (ORDER BY salary DESC) AS rank
FROM employees;

-- RANK():
-- Assigns rank, but skips numbers when there are ties.
RANK() OVER (ORDER BY salary DESC)

-- SUM() OVER()
-- Running or partitioned totals.
SELECT date, sales,
SUM(sales) OVER (ORDER BY date) AS running_total
FROM orders;

/* 
# Real-world use cases:
Ranking top performers
Running totals
Moving averages
Finding duplicates
Comparing current row with previous/next row (LAG, LEAD)


-- Window functions are SQL functions that perform calculations across a set of rows related to the current row while retaining individual row details
