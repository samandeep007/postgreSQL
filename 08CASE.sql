-- CASE 
-- Along with the fullname, salary of the employee, print whether the employee belongs to high salary category or low
-- Salary > 48000 is consider High

-- Remember If you start a case, you have to end it as well; WHEN-THEN-ELSE

-- SELECT CONCAT_WS(' ', fname, lname) AS fullname, salary,
-- CASE 
-- 	WHEN salary >= 48000 THEN 'HIGH'
-- 	ELSE 'LOW'
-- END AS salary_category	
-- FROM employees;



-- If the employee falls in the low salary category give him 10% bonus;
-- SELECT CONCAT_WS(' ', fname, lname), salary,
-- CASE
--   WHEN salary>=48000 THEN 'HIGH'
--   ELSE 'LOW'
-- END AS salary_category,
-- CASE 
--   WHEN salary < 48000 THEN ROUND(salary*0.10)
--   ELSE 0
-- END AS bonus
-- FROM employees;

-- TASK
-- SELECT 
-- CASE 
--  WHEN (salary*0.10) > 5500 THEN 'HIGH'
-- WHEN (salary*0.10) BETWEEN 4800 AND 5500 THEN 'MID'
-- ELSE 'LOW'
-- END AS bonus,
-- COUNT(emp_id) FROM employees GROUP BY bonus; --Always count the primary key

