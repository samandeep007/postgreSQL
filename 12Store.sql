-- CREATE TABLE customers (
-- 	cust_id SERIAL PRIMARY KEY,
-- 	cust_name VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE orders (
-- 	ord_id SERIAL PRIMARY KEY,
-- 	ord_date DATE NOT NULL DEFAULT CURRENT_DATE,
-- 	cust_id INT NOT NULL,
-- 	FOREIGN KEY(cust_id)
-- 		REFERENCES customers(cust_id)
-- );

-- CREATE TABLE products (
-- 	p_id SERIAL PRIMARY KEY,
-- 	p_name VARCHAR(100) NOT NULL UNIQUE,
-- 	price NUMERIC NOT NULL,
-- 	CONSTRAINT products_price_check CHECK(price>0)
-- );

-- CREATE TABLE ord_items (
-- 	items_id SERIAL PRIMARY KEY,
-- 	ord_id INT NOT NULL,
-- 	p_id INT NOT NULL,
-- 	quantity INT NOT NULL,
-- 	CONSTRAINT ord_items_quantity_check CHECK(quantity>0),
-- 	FOREIGN KEY(ord_id) REFERENCES orders(ord_id),
-- 	FOREIGN KEY(p_id) REFERENCES products(p_id)
-- );


-- INSERT INTO customers (cust_id, cust_name)
-- VALUES 
--     (1, 'Raju'), (2, 'Sham'), (3, 'Paul'), (4, 'Alex');

-- INSERT INTO orders (ord_id, ord_date, cust_id)
-- VALUES 
--     (1, '2024-01-01', 1),      -- Raju first order
--     (2, '2024-02-01', 2),     -- Sham first order
--     (3, '2024-03-01', 3),     -- Paul first order
--     (4, '2024-04-04', 2);    -- Sham second order

-- INSERT INTO products (p_id, p_name, price)
-- VALUES 
--     (1, 'Laptop', 55000.00),
--     (2, 'Mouse', 500),
--     (3, 'Keyboard', 800.00),
--      (4, 'Cable', 250.00)
-- ;

-- INSERT INTO ord_items (ord_id, p_id, quantity)
-- VALUES 
--     (1, 1, 1),  -- Raju ordered 1 Laptop
--     (1, 4, 2),  -- Raju ordered 2 Cables
--     (2, 1, 1),  -- Sham ordered 1 Laptop
--     (3, 2, 1),  -- Paul ordered 1 Mouse
--     (3, 4, 5),  -- Paul ordered 5 Cable
--     (4, 3, 1);  -- Sham ordered 1 Keyboard

SELECT c.cust_name, o.ord_id, o.ord_date, p.p_name, oi.quantity, p.price, (p.price * quantity) AS total_price 
	FROM ord_items oi 
	JOIN orders o ON oi.ord_id= o.ord_id 
	JOIN customers c ON o.cust_id = c.cust_id 
	JOIN products p ON oi.p_id = p.p_id;