-- List of all the databases
SHOW DATABASES;

-- Redirect to the DB one we want to use
USE photo_store;

-- Show the current DB in use
SELECT DATABASE;

-- Show all the tables in the selected DB
SHOW TABLES;

-- Customers are coming to the store and we want to store customer data
CREATE TABLE customers(
    id INT NOT NULL AUTO_INCREMENT,                             -- Id is never null and is automatically numbered
    name VARCHAR(30) NOT NULL,                                  -- Name is never null
    email VARCHAR(40) NOT NULL DEFAULT 'No email provided',     -- Default email id to be set
    amount INT,
    PRIMARY KEY (id)                                            -- set id as the primary (unique) key
);

-- TODO: add some values in customers

INSERT INTO customers(name, email, amount)
VALUES(
    'Anuja', 
    'namboodiri.anu@gmail.com',
    30
);

-- insert another entry, fields swapped

INSERT INTO customers(email, name, amount)
VALUES(
   'Shruti@gmail.com',
    'Shruti',
    25
);

-- try inserting data without any 'name' entry

INSERT INTO customers(email, amount)
VALUES(
   'devloper@gmail.com',
    15
);
-- The above code lines will throw an error
-- ERROR 1364 (HY000): Field 'name' doesn't have a default value

-- try inserting data without any 'email' entry
INSERT INTO customers(name, amount)
VALUES(
   'Rob',
    15
);

-- Drop table and create a new customer table

DROP TABLE customers;

CREATE TABLE customers(
    id INT NOT NULL AUTO_INCREMENT,                             -- Id is never null and is automatically numbered
    name VARCHAR(30) NOT NULL,                                  -- Name is never null
    email VARCHAR(40) NOT NULL DEFAULT 'No email provided',     -- Default email id to be set
    amount INT,
    PRIMARY KEY (id)                                            -- set id as the primary (unique) key
);

INSERT INTO customers(name, email, amount)
VALUES ('Anuja', 'namboodiri.anu@gmail.com', 35),
       ('Shruti', 'shruti@gmail.com', 45),
       ('George', 'geo@lco.dev', 88),
       ('Line', 'lina@gmail.com', 78),
       ('Jimy', 'jimmy@yahoo.co.in', 54),
       ('Lina', 'lina@yahoo.co.in', 35),
       ('Anuja', 'anuja@yahoo.co.in', 56);

-- TODO: Answer some questions:

-- Manager: Can you give me the names of all the customers
SELECT name from customers;

-- Manager: Can you give me the emails of all the customers
SELECT email from customers;

-- Manager: Can you give me all the 'purchases' of the customers
SELECT amount from customers;
-- Alias amount as purchases
SELECT amount AS Purchases from customers; -- NO change in table, just representation

-- TODO: Update tasks

-- Jimmy's email was entered incorrectly, edit it to jimy@yahoo.com
SELECT * from customers WHERE name='Jimy';
UPDATE customers SET email='jimmy@yahoo.com' WHERE name='Jimy'

-- Anuja's purchase was not of 35 but of 38
SELECT * from customers WHERE name='Anuja'; -- gives 2 values
SELECT * from customers WHERE id=1; -- gives single row
UPDATE customers SET amount=38 WHERE id=1

-- Change email of all Anuja to anuja@gmail.com
SELECT * from customers WHERE name='Anuja';
UPDATE customers SET email = 'anuja@gmail.com' WHERE name='Anuja';

-- Delete George information
SELECT * from customers WHERE name='george';
DELETE from customers WHERE name='george';

-- Delete all Anuja's account
SELECT * from customers WHERE name='Anuja';
DELETE from customers WHERE name='Anuja';