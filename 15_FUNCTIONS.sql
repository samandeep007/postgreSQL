-- User Defined Functions --> return a value
/*
	CREATE OR REPLACE FUNCTION function_name(parameters)
	RETURN return_type AS $$
	BEGIN
	--- scaler query goes here
	RETURN whatever;
	END;
	$$ LANGUAGE plpgsql;
*/

-- Find the employee with the maximum salary in each department

-- Method 1: The wrong method
-- SELECT dept, MAX(salary) FROM employees GROUP BY dept; --> Doesn't return the employee details with the most salary

-- Method 2: Using sub queries
-- SELECT e.emp_id, e.fname, e.salary
-- FROM employees e 
-- WHERE e.dept = 'HR' AND 
-- e.salary = (
-- 	SELECT MAX(emp.salary) FROM employees emp WHERE emp.dept = 'HR'
-- );


