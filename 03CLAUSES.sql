-- INSERT INTO employees(fname, lname, email, dept, salary, hire_date)
-- VALUES 
-- ('Raj', 'Sharma', 'raj.sharma@example.com', 'IT', 50000.00, '2020-01-15'),
-- ('Priya', 'Singh', 'priya.singh@example.com', 'HR', 45000.00, '2019-03-22'),
-- ('Arjun', 'Verma', 'arjun.verma@example.com', 'IT', 55000.00, '2021-06-01'),
-- ('Suman', 'Patel', 'suman.patel@example.com', 'Finance', 60000.00, '2018-07-30'),
-- ('Kavita', 'Rao', 'kavita.rao@example.com', 'HR', 47000.00, '2020-11-10'),
-- ('Amit', 'Gupta', 'amit.gupta@example.com', 'Marketing', 52000.00, '2020-09-25'),
-- ('Neha', 'Desai', 'neha.desai@example.com', 'IT', 48000.00, '2019-05-18'),
-- ('Rahul', 'Kumar', 'rahul.kumar@example.com', 'IT', 53000.00, '2021-02-14'),
-- ('Anjali', 'Mehta', 'anjali.mehta@example.com', 'Finance', 61000.00, '2018-12-03'),
-- ('Vijay', 'Nair', 'vijay.nair@example.com', 'Marketing', 50000.00, '2020-04-19');


-- SELECT * FROM employees;

-- SQL Clauses

-- WHERE Clause --> to target a specific tuple

-- fetch the salary of Kavita
-- SELECT salary FROM employees WHERE emp_id=5; 

-- fetch all the employees in the HR department
-- SELECT * FROM employees WHERE dept='HR';

-- fetch all the employees who have salary more than 55000
-- SELECT * FROM employees WHERE salary >= 55000;

-- fetch all the employees who have salary more than 45000 and are from HR department
-- SELECT * FROM employees WHERE salary>=45000 AND dept='HR';

-- fetch all the employees who have more than 60000 salary or department is HR
-- SELECT * FROM employees WHERE salary>=60000 OR dept='HR';

-- fetch all the employees who have any department other than HR 
-- SELECT * FROM employees WHERE dept!='HR';

-- fetch all the employees from IT and HR department
-- SELECT * FROM employees WHERE dept='HR' OR dept='IT';






