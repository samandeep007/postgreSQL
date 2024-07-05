-- JOINS
-- Whenever we create a relationship between two or more tables using keys, we have a operation called JOIN which helps us to read data

-- JOIN operation is used to combine rows from two or more rows based on related column between them

-- CROSS, INNER, LEFT, RIGHT



-- CROSS JOIN
-- Every row in one table is combined with every row from another table

-- SELECT * FROM customers CROSS JOIN orders;



-- INNER JOIN
-- Returns only the rows where there is a match between the specified columns in the left(first) and right(second) tables;

-- SELECT * FROM customers c INNER JOIN orders o ON c.cust_id = o.cust_id; --> We use Aliasis here ON --> the basis


-- Fetch number of orders placed by each customer
	-- SELECT c.cust_name, COUNT(o.order_id) FROM 
	-- customers c 
	-- 	INNER JOIN     
	-- 		orders o 
	-- ON c.cust_id = o.cust_id
	-- 	GROUP BY c.cust_name; --You cannot use * when grouping 




-- LEFT JOIN
-- Returns all rows from the left(first) table and the matching rows from the right(second) tables.
-- Alex doesn't have any corresponding rows in the second table, so the rows will be null for him

-- SELECT * FROM customers c LEFT JOIN orders o ON c.cust_id = o.cust_id;


-- RIGHT JOIN
-- Return all the rows in the second table and matching rows from the first table

-- SELECT * FROM orders o RIGHT JOIN customers c ON o.cust_id=c.cust_id;








