-- CTRL + / TO COMMENT OUT COMMANDS 

-- create a database and then drop and create a new one
CREATE DATABSE click_store;
SHOW DATABASES;

DROP database click_store;
CREATE DATABASE photo_store;
SHOW DATABASES;

-- Show all the databases and the one which is in use - select command
SHOW DATABASES;
SELECT DATABASE();   

-- change the current working database to photo_store
USE photo_store;
SELECT DATABASE();  

-- TODO: Create a table to store camera data

CREATE TABLE cameras(
    model_name VARCHAR(30),
    quantity INT
);
DESC cameras; 

-- TODO: Drop the previous table and create a new table for canon cameras

DROP TABLE
DROP TABLE cameras;
SHOW TABLES;

CREATE TABLE canon_cameras(
    model_name VARCHAR(30),
    quantity INT
);

DESC canon_cameras;

-- TODO: Insert data to the table

INSERT INTO canon_cameras(model_name, quantity)
VALUES("70D", 12),
("80D", 19),
("E0S-R", 25),
("E0S-r5", 80),
("E0S-R6", 50);

-- TODO: Answering cutomer questions

-- Customer: What models of canon cameras do you have?

-- Bad approach
SELECT * from canon_cameras;

-- Good approach
SELECT model_name from canon_cameras;

-- Customer: How many 80D can you give me right now?

SELECT model_name, quantity FROM canon_cameras
WHERE model_name='80d';         -- Both 80D and 80d search works

-- Customer: I want to buy 50 cameras of the same model (any)

SELECT model_name, quantity FROM canon_cameras
WHERE quantity>=50;
