-- CHECK Constraint --> for validation --> function

-- Add a field named email that checks if the email is legit or not, that means it has @ or not
-- ALTER TABLE contacts ADD COLUMN email VARCHAR(150) UNIQUE CHECK (email LIKE '%@%' AND LENGTH(email) > 10); 

-- Verify if it works or not
-- INSERT INTO contacts VALUES(108, 'Lovepreet', 'Perth', 28, 'lovepreet662@gmail.com');

-- Remove the email constraint
-- ALTER TABLE contacts DROP CONSTRAINT contacts_email_check;

-- Check
 -- INSERT INTO contacts VALUES(109, 'Lovedeep', 'Persia', 22, 'lovepreet662gmail.com');

-- NAMED CONSTRAINTS

-- CREATE TABLE addresses (
-- 	Line1 VARCHAR(100) NOT NULL,
-- 	CONSTRAINT line1_less_than_10characters CHECK (LENGTH(Line1) > 10)
-- );

-- INSERT INTO addresses VALUES ('faaff');

-- ALTER TABLE contacts ADD COLUMN mobile INT UNIQUE;
-- INSERT INTO contacts VALUES (110, 'Mehreen', 'Calgary', 22, 'mehreen@gmail.com', 221);

-- ADD length constraint to mobile number
-- ALTER TABLE contacts ADD CONSTRAINT mobile_less_than_10digits CHECK (LENGTH(mobile) = 10);

-- INSERT INTO contacts VALUES (111, 'Harleen', 'Chandigarh', 18, 'harleen18@gmail.com', 2223232329);



