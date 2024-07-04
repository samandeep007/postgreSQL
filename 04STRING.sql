-- String Functions 
/*
CONCAT, CONCAT_WS
SUBSTR
LEFT, RIGHT
LENGTH
UPPER, LOWER
TRIM, LTRIM, RTRIM
REPLACE
POSITION
STRING_AGG
	*/


-- CONCAT --> Joins two columns together
-- CONCAT_WS --> Concatenate with separator --> concatenates the columns with the delimiter passed as the first argument in the function

-- fetch the fname and lname of the employee separated by a space as fullname from the employees table
-- SELECT CONCAT_WS(' ', fname, lname) AS fullname FROM employees;

-- fetch the emp_id fname and lname of the employee separated by a space as fullname from the employees table
-- SELECT emp_id, CONCAT_WS(' ', fname, lname) AS Fullname FROM employees;



-- SUBSTR or SUBSTRING --> Works differently from that of programming languages --> Index starts from 1 and the end index is also included

-- Find all the email domains in the employees_table
-- SELECT DISTINCT SUBSTR(email, POSITION('@' IN email ) + 1) AS email_provider FROM employees; 

-- Get hello from hello world
-- SELECT SUBSTRING('hello world', 1,5);


-- REPLACE

-- Replace hey to Hello in hey Saman!
-- SELECT REPLACE('hey Saman!', 'hey', 'Hello');


-- change IT department to tech department
-- SELECT *, REPLACE(dept, 'IT', 'TECH') AS dept FROM employees;



-- REVERSE 

-- Reverse the first name of employees
-- SELECT REVERSE(fname) FROM employees;

-- LENGTH

-- find the length of each employee's fname;
-- SELECT fname, LENGTH(fname) FROM employees;

-- list all the employees who have name longer than 5 chars
-- SELECT fname FROM employees WHERE LENGTH(fname) >= 5;

-- UPPER

--list down the name of all employees in upper case;
-- SELECT UPPER(CONCAT_WS(' ', fname, lname)) AS FullName FROM employees

-- LOWER

--list down the name of all employees in lower case;
-- SELECT LOWER(CONCAT_WS(' ', fname, lname)) AS FullName FROM employees


-- LEFT --> LEFT se kitne character chahiye
-- SELECT LEFT('Hello World', 5);

-- RIGHT --> RIGHT se kitne character chahiye
-- SELECT RIGHT('Hello World', 5);








