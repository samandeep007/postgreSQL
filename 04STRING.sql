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




