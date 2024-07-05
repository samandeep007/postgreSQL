-- Relationships

-- Types of relationship
--One to one
-- Dono tables mei ek ek baar

-- One to many
--Raju can work on multiple tasks: There is 1:Many relationship between Raju and Task table

--Many to Many
-- A book can have multiple authors, and a author can have multiple books --> Many to Many

-- Use case of 1:Many
-- One customer can places many order, but a single order can't be placed by many customers
-- PK of customer table is used as FK in order table


/*
CREATE TABLE contacts(
   contact_id INT GENERATED ALWAYS AS IDENTITY,
   customer_id INT,
   CONSTRAINT fk_customer
      FOREIGN KEY(customer_id) 
        REFERENCES customers(customer_id)
);
*/

