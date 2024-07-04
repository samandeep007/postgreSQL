-- ALTER Query --> Changing the structure of the table --> Schema of the table

-- Update age of Samandeep to 22
-- UPDATE person SET age=22 WHERE name='Samandeep';

-- Currently, we have id, name, and city column, what if i want to add a age column
-- ALTER TABLE person ADD COLUMN age VARCHAR(50);

-- Rename name column to fullname
-- ALTER TABLE person RENAME COLUMN name TO FullName;

-- Rename Table to contacts
-- ALTER TABLE person RENAME TO contacts;

-- Drop age column from the table
-- ALTER TABLE contacts DROP COLUMN age;

-- Add a column age with default value zero
-- ALTER TABLE contacts ADD COLUMN age INT DEFAULT 0;

-- Change the default age to 18
-- Method 1
-- ALTER TABLE contacts ALTER COLUMN age SET DEFAULT 18;

-- Just for verification
-- INSERT INTO contacts VALUES (106, 'Harmanpreet Kaur', 'Hoshiarpur');

-- Change the datatype of name to VARCHAR(100)
-- ALTER TABLE contacts ALTER COLUMN fullname SET DATA TYPE VARCHAR(100);

-- Remove a constraint
-- ALTER TABLE contacts ALTER COLUMN age DROP DEFAULT;

-- INSERT INTO contacts VALUES(107, 'Gurpartap', 'Ludhiana');
-- SELECT * FROM contacts;





