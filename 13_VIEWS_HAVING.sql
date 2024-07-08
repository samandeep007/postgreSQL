-- CREATE VIEW billing_info AS SELECT * FROM customers; -- You can delete it from here, your view will still be there

-- SELECT * FROM billing_info; --This is how you call it
-- \dt --> describe tables
-- \dv --> describe views

-- CREATE VIEW billing_details AS 
-- SELECT o.ord_id, c.cust_name, o.ord_date, p.p_name, p.price, oi.quantity, (p.price*oi.quantity) AS total_price 
-- 	FROM ord_items oi 
-- 	JOIN orders o ON oi.ord_id = o.ord_id
-- 	JOIN customers c ON c.cust_id = o.cust_id
--     JOIN products p ON p.p_id = oi.p_id;

-- SELECT p_name, SUM(total_price) FROM billing_details GROUP BY p_name HAVING SUM(total_price)>1500 ORDER BY SUM ASC;
SELECT COALESCE(p_name, 'Total'), SUM(total_price) -- if p_name is null, show total there
	FROM billing_details 
	GROUP BY ROLLUP(p_name) -- It will still GROUP BY p_name, you will just have one extra total row
	ORDER BY SUM ASC;