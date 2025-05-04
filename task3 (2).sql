CREATE DATABASE PAYMENT;
USE PAYMENT;
CREATE TABLE PAYMENTS(
customer_id INT PRIMARY KEY,
name VARCHAR(50),
mode VARCHAR (15),
city VARCHAR (20)
);
INSERT INTO payments
(customer_id, name, mode, city)
VALUES
(101, "Anil", "Netbanking", "Pune"),
(102, "Mahi", "Credit Card", "Delhi"),
(103, "Juhi", "Credit Card", "Mumbai"),
(104, "Ruhi", "Netbanking", "Lucknow"),
(105, "Dhruv",  "Credit Card", "Patna"),
(106, "Yashi",  "Debit Card", "Delhi"),
(107, "Emanuel",  "Debit Card", "Lucknow"),
(108, "Gauri",  "Netbanking", "Mumbai"),
(109, "Tanu",  "Netbanking", "Lucknow"),
(110, "Subarna",  "Credit Card", "Lucknow");

Select * From payments;

SELECT mode, count(customer_id)
FROM payments
GROUP BY mode;


