#Creating database
CREATE DATABASE parks_and_recreation;

#Using the database
USE parks_and_recreation;

#Creating table
CREATE TABLE employee_demographics (
employee_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
age INT NOT NULL,
gender VARCHAR(50),
birth_date DATE 
);

#Insert all the value into that table 
INSERT INTO employee_demographics (employee_id, first_name, last_name, age, gender, birth_date)
VALUES
(1,"Lesile",'knope',44, 'Female','1979-09-25'),
(2,'Tom', 'Haverford', 36, 'Male', '1987-03-04'),
(3, 'April', 'Ludgate', 29, 'Female', '1994-03-27'),
(4, 'Jerry', 'Gergich', 61, 'Male', '1962-08-28'),
(5, 'Donna', 'Meagle', 46, 'Female', '1977-07-30'),
(6, 'Ann', 'Perkins', 35, 'Female', '1988-12-01'),
(7, 'Chris', 'Traeger', 43, 'Male', '1980-11-11'),
(8, 'Ben', 'Wyatt', 38, 'Male', '1985-07-26'),
(9, 'Andy', 'Dwyer', 34, 'Male', '1989-03-25'),
(10, 'Mark', 'Brendanawicz', 40, 'Male', '1983-06-14'),
(11, 'Craig', 'Middlebrooks', 37, 'Male', '1986-07-27');

#1.showing the entire table
SELECT * FROM employee_demographics;

#2.show only column- 2 & 4 (first_name, age)
SELECT first_name, age FROM employee_demographics;

#Show recent age and 10 years later age
SELECT age, age+10 FROM employee_demographics;

#Remove duplicates values from the Column 5 or gender
SELECT DISTINCT gender FROM  employee_demographics;

#Where Clause
#show only Female employee
SELECT * FROM employee_demographics
WHERE gender = "Female";

#show only male employee
SELECT * FROM employee_demographics
WHERE gender != "Female";

#Check who born after 1985
SELECT * FROM employee_demographics
WHERE birth_date > "1985-01-01";

#Check who born before 1985
SELECT * FROM employee_demographics
WHERE birth_date < "1985-01-01";

#Show only male who born before 1985 (AND)
SELECT * FROM employee_demographics
WHERE birth_date < "1985-01-01"
AND gender = 'Male';

#Show who those who is born befor 1985 or male (OR)
SELECT * FROM employee_demographics
WHERE birth_date < '1985-01-01' OR gender ="Male";

#Show only female those who born befor 1985 (OR NOT)
SELECT * FROM employee_demographics
WHERE birth_date < '1885-01-01' OR NOT gender = "Male";

#LIKE Statment
SELECT * FROM employee_demographics
WHERE first_name LIKE "Jer%";

SELECT * FROM employee_demographics
WHERE first_name LIKE '%er%';

SELECT * FROM employee_demographics
WHERE first_name LIKE 'a%';

SELECT * FROM employee_demographics
WHERE first_name LIKE 'a__';

SELECT * FROM employee_demographics
WHERE first_name LIKE 'a__%';