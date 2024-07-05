-- CREATE TABLE customers (
-- 	cust_id SERIAL PRIMARY KEY,
-- 	cust_name VARCHAR(100) NOT NULL,
-- 	email VARCHAR(100) NOT NULL UNIQUE
-- 	CONSTRAINT customers_email_check CHECK(email LIKE '%@%' AND LENGTH(email) > 10)
-- );

-- CREATE TABLE orders (
-- 	order_id SERIAL PRIMARY KEY,
-- 	order_date DATE NOT NULL DEFAULT CURRENT_DATE,
-- 	amount INT NOT NULL,
-- 	cust_id INT NOT NULL,
-- 	FOREIGN KEY(cust_id)
-- 	REFERENCES customers(cust_id)
-- );

-- INSERT INTO customers (cust_name, email)
-- VALUES 
--     ('Raju', 'raju@gmail.com'), ('Sham', 'sham@gmail.com'), ('Paul', 'paul@gmail.com'), ('Alex', 'alex@gmail.com');

-- INSERT INTO orders (order_date, cust_id, amount)

-- VALUES 

--     ('2024-01-01', 1, 250.00),  

--     ('2024-01-15', 1, 300.00),  

--     ('2024-02-01', 2, 150.00),

--     ('2024-03-01', 3, 450.00),

--     ('2024-04-04', 2, 550.00);  

