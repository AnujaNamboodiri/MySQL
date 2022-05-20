-- TODO: Create Date Time Table
CREATE TABLE users(
    name VARCHAR(50),
    col1 DATE,
    col2 TIME,
    col3 DATETIME    
);

-- TODO: Add more values
INSERT INTO users(name, col1, col2, col3)
VALUES(
    'Anuja', '2020-08-14', '23:10:11', '2021-09-14 12:10:11'
);

INSERT INTO users(name, col1, col2, col3)
VALUES(
    'Shruti', '2020-08-14', '23:10:11', NOW()
);

-- TODO: Get the data
SELECT name, MONTH(col3), HOUR(col3) from users;

SELECT name, DATE_FORMAT(col3, '%m--%d--%Y') from users;

SELECT name, DATE_FORMAT(col3, '%m/%d/%Y') from users;
