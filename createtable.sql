--Part 1: SQL Task
--A database of a beauty brand named “GetReady“
--Creating the table in Query tool,
--Code for creating table orders
CREATE TABLE orders
(
order_id int8 PRIMARY KEY,
customer_id int NOT NULL,
product_id int NOT NULL,
order_date DATE,
quantity int8,
order_amount FLOAT NOT NULL
);
--Inserting the random value
INSERT INTO orders
(order_id, customer_id, product_id, order_date, quantity, order_amount)
VALUES
(1, 10, 500, '2025-03-15', 2, 1000.00),
(2, 11, 510, '2025-03-16', 1, 500.00),
(3, 12, 520, '2025-03-17', 3, 2500.00),
(4, 13, 530, '2025-03-12', 4, 3300.00),
(5, 14, 540, '2025-03-13', 2, 1000.00);
--Code for creating table customers
CREATE TABLE customers
(
customer_id int8 PRIMARY KEY,
customer_name VARCHAR(50) NOT NULL,
age int NOT NULL,
country VARCHAR(40),
signup_date DATE
);
--Inserting the random value
INSERT INTO customers
(customer_id, customer_name, age, country, signup_date)
VALUES
(10, 'Ram', 25, 'India', '2025-03-15'),
(11, 'Peter', 23, 'England', '2025-03-16'),
(12, 'Nolan', 18, 'America', '2025-03-17'),
(13, 'Nitesh', 22, 'India', '2025-03-12'),
(14, 'Chris', 37, 'West Indies', '2025-03-13'),
(15, 'Abhay', 19, 'India', '2025-03-18'),
(16, 'Sam', 21, 'Australia', '2025-03-09'),
(17, 'Sekh', 30, 'India', '2025-03-22');
--Code for creating table products
CREATE TABLE products
(
product_id int8 PRIMARY KEY,
product_name VARCHAR(50) NOT NULL,
category VARCHAR(50) NOT NULL,
price FLOAT
);
--Inserting the random value
INSERT INTO products
(product_id, product_name, category, price)
VALUES
(500, 'Apple', 'Earpod', 500.00),
(510, 'Samsung', 'Phone', 500.00),
(520, 'Tata', 'Tea', 833.33),
(530, 'Campus', 'shoes', 825.00),
(540, 'Adani', 'Oil', 500.00),
(550, 'Boat', 'Headphone', 650.00),
(560, 'Sony', 'TV', 5000.00),
(570, 'Canon', 'DSLR', 4200.00);