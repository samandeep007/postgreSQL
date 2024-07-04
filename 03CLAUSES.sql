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

-- fetch employees whose salary is more than 40,000 and less than 65000
-- SELECT * FROM employees WHERE salary >= 40000 AND salary <= 65000;



---- IN OPERATOR -- Similar to enums

-- fetch employees who are from Marketing, and Finance 
-- SELECT * FROM employees WHERE dept IN ('Marketing', 'Finance');



--- BETWEEN OPERATOR -- Range

-- fetch employees who have salary more than 50000, and less than 60000;
-- SELECT * FROM employees WHERE salary BETWEEN 50000 AND 60000;


-- fetch all the employees who are neither in IT nor in HR
-- SELECT * FROM employees WHERE dept NOT IN ('IT','HR');


--- DISTINCT

-- fetch all the distinct departments in bank (no repetition --> No duplicates);
-- SELECT DISTINCT dept FROM employees;

-- ORDER BY --> Alphabetical Sorting
-- SELECT * FROM employees ORDER BY fname;

--- order all the employees by department in descending order
-- SELECT * FROM employees ORDER BY dept DESC;

--- order all the employees by salary in ascending order
-- SELECT * FROM employees ORDER BY salary ASC;



-- LIMIT --> Rate limiting the fetched data

-- Fetch only top 3 employees by salary
-- SELECT * FROM employees ORDER BY salary DESC LIMIT 3;


--LIKE --> To find pattern LIKE %R%

-- fetch all the users whose name start with A
-- SELECT * FROM employees WHERE fname LIKE 'A%'; -- It means the name must start with A, it can have as many characters 

-- fetch all the users whose last name has 'ta' in it
-- SELECT * FROM employees WHERE lname LIKE '%ta%';

-- fetch all the users whose name end with a --> It is case sensitive -- Remember
-- SELECT * FROM employees WHERE fname LIKE '%a';

-- fetch all the users whose first name has 'i' in it
-- SELECT * FROM employees WHERE fname LIKE '%i%';

-- fetch all the departments that have only two letters in them
-- SELECT DISTINCT dept FROM employees WHERE dept LIKE '__';

-- fetch all the employees who have 5 letters in their fname
-- SELECT fname FROM employees WHERE fname LIKE '_____';

-- fetch all the employees who have a as the second letter in their fname;
-- SELECT * FROM employees WHERE fname LIKE '_a%';


-- AGGREGATE FUNCTIONS - COUNT, SUM, MIN, MAX, AVG

-- COUNT 

-- fetch total number of employees --> Use PK if possible
-- SELECT COUNT(emp_id) AS totalEmployees FROM employees;


-- SUM 

-- fetch total amount going out as salary to employees
-- SELECT SUM(salary) FROM employees;

-- fetch average amount going out as salary to employees
-- SELECT AVG(salary) FROM employees;

-- fetch minimum amount going out as salary to employees
-- SELECT MIN(salary) FROM employees;

-- fetch maximum amount going out as salary to employees
-- SELECT MAX(salary) FROM employees;


-- GROUP BY -- IMPORTANT --> does the distinct thing for you automatically under the hood

-- fetch number of employees in all departments
-- SELECT dept, COUNT(emp_id) FROM employees GROUP BY dept;

-- fetch number of employees in all departments in descending order
-- SELECT DISTINCT dept, COUNT(emp_id) FROM employees GROUP BY dept ORDER BY COUNT DESC;

-- fetch the salary going to each department
-- SELECT dept, SUM(salary) FROM employees GROUP BY dept ORDER BY SUM DESC;