-- CHECK Constraint --> for validation --> function

-- Add a field named email that checks if the email is legit or not, that means it has @ or not
-- ALTER TABLE contacts ADD COLUMN email VARCHAR(150) UNIQUE CHECK (email LIKE '%@%' AND LENGTH(email) > 10); 

-- Verify if it works or not
-- INSERT INTO contacts VALUES(108, 'Lovepreet', 'Perth', 28, 'lovepreet662@gmail.com');


