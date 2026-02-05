CREATE DATABASE parks_and_recreation;
USE parks_and_recreation;

CREATE TABLE employee_demographics (
employee_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR (50),
age INT,
gender VARCHAR(50),
birth_date DATE
);

INSERT INTO employee_demographics (employee_id,first_name,last_name,age,gender,birth_date)
VALUES 
(1,"LESLIE","kNOP",44,"FEMALE","1979-09-25"),
(2, "TOM","HARVARFORD",36,"MALE","1987-03-04");

SELECT * FROM employee_demographics;
SELECT age, FROM employee_demographics;
