CREATE DATABASE COLLEGE;
USE COLLEGE;
CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR (1),
city VARCHAR (20)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "Anil", 78, "C", "Pune"),
(102, "Mahi", 90, "A", "Delhi"),
(103, "Juhi", 80, "B", "Mumbai"),
(104, "Ruhi", 15, "E", "Lucknow"),
(105, "Dhruv", 92, "A", "Patna"),
(106, "Yashi", 23, "E", "Delhi"),
(107, "Emanuel", 52, "C", "Lucknow"),
(108, "Gauri", 96, "A", "Mumbai"),
(109, "Tanu", 98, "A", "Lucknow"),
(110, "Subarna", 82, "B", "Lucknow");

SELECT name, marks FROM student;

SELECT DISTINCT city FROM student;
SELECT * FROM student WHERE MARKS > 60;
SELECT * FROM student WHERE city = "Lucknow";
SELECT * FROM student WHERE marks+10 > 100;
SELECT * FROM student WHERE marks =15;
SELECT * FROM student WHERE marks >50;
SELECT * FROM student WHERE marks >50 AND city = "Patna";
SELECT * FROM student WHERE marks >80 OR city = "Mumabai";
SELECT * FROM student WHERE marks BETWEEN 80 AND 90;
SELECT * FROM student WHERE city IN ("Delhi", "Mumbai");
SELECT * FROM student WHERE city IN ("Delhi", "Mumbai", "Noida");
SELECT * FROM student WHERE city NOT IN ("Delhi", "Mumbai");
SELECT * FROM student LIMIT 5;
SELECT * FROM student WHERE marks > 60
LIMIT 5;

SELECT * FROM student ORDER BY city ASC;
SELECT * FROM student ORDER BY marks ASC;
SELECT * FROM student ORDER BY marks DESC
LIMIT 5;

SELECT max(marks)
FROM student;
SELECT avg (marks)
FROM student;

SELECT city
FROM student
GROUP BY city;

SELECT city, count(rollno)
FROM student
GROUP BY city;

SELECT city
FROM student
GROUP BY city;

SELECT city, count(rollno)
FROM student
GROUP BY city;

SELECT city, avg(marks)
FROM student
GROUP BY city;

SELECT city, avg(marks)
FROM student
GROUP BY city;
ORDER BY city;

SELECT city, avg(marks)
FROM student
GROUP BY city;
ORDER BY (marks);

SELECT city, avg (marks)
FROM student
GROUP BY city
ORDER BY avg (marks);


