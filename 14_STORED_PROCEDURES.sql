
-- UPDATE employees SET salary=70000 WHERE emp_id=5;
-- SELECT * FROM employees;

/*
	-- Stored Routine --> Stored Procedures --> User defined functions
	CREATE OR REPLACE PROCEDURE procedure_name(parameter_name parameter_type, ..)
	LANGUAGE plpgsql
	AS $$ --> This is delimiter we will use to end our procedure
	BEGIN
	----- Query -----
	END
	$$;
*/

-- CREATE OR REPLACE PROCEDURE update_salary(p_employee_id INT, p_salary NUMERIC)
-- LANGUAGE plpgsql
-- AS $$
-- BEGIN
-- UPDATE employees
-- SET salary = p_salary
-- WHERE emp_id = p_employee_id;
-- END
-- $$;

-- CALL update_salary(4, 50000);


SELECT * FROM employees;
