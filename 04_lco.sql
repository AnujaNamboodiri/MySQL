CREATE DATABASE new_lco;
USE new_lco;

CREATE TABLE users(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30),
    email VARCHAR(60)
);

CREATE TABLE purchases(
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount INT,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users (id)
);

INSERT INTO users(name, email)
VALUES
    ( 'Anuja', 'anuja@gmail.com'),
    ('Shruti', 'shruti@gmail.com'),
    ('Khushi', 'khushi@gmail.com'),
    ('Pratik', 'pratik@gmail.com');

INSER INTO purchases(order_date, amount, user_id)
VALUES
    ('2019-04-03',  199, 2);