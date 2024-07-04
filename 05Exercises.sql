-- EXERCISE 

-- Task1: 1:Raj:Sharma:IT
-- SELECT CONCAT_WS(':', emp_id, fname, lname, dept) FROM employees;


-- Task2: 1:Raj Sharma:IT:50000
-- SELECT CONCAT_WS(':', emp_id, CONCAT_WS(' ', fname, lname), dept, FLOOR(salary)) FROM employees;

-- Task3: 4:Suman:FINANCE
-- SELECT CONCAT_WS(':', emp_id, fname, UPPER(dept)) FROM employees;

-- Task4: I1 Raju, H2 Priya
-- SELECT CONCAT_WS(' ', CONCAT(LEFT(dept, 1), emp_id), fname) FROM employees;

-- 1: Find different type of departments in database
-- SELECT DISTINCT dept FROM employees;

-- 2: Display records with High-low salary
-- SELECT * FROM employees ORDER BY salary DESC;

-- 3: How to see only top 3 records from a table?
-- SELECT * FROM employees LIMIT 3;

-- 4: Show records where first name starts with letter 'A'
-- SELECT * FROM employees WHERE fname LIKE 'A%';

-- 5: Show records where length of the lname is 4 characters
-- SELECT * FROM employees WHERE LENGTH(fname)=4;





