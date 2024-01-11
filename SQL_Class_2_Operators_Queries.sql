-- arithmetic Operators
SELECT 10 + 5;        
SELECT 20 - 8;        
SELECT 4 * 3;         
SELECT 15 / 3;       
SELECT 17 % 5;        

-- bitwise operators
SELECT 10 & 5;   -- Result: 0 (binary: 1010 & 0101 = 0000)
SELECT 10 | 5;   -- Result: 15 (binary: 1010 | 0101 = 1111)
SELECT 10 ^ 5;   -- Result: 15 (binary: 1010 ^ 0101 = 1111)
-- XOR returns 1 if the two input bits are different,0 if the input bits are the same.

-- Create the 'employees' table

use mysql_demo;
CREATE TABLE employees_new (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    age INT
);
-- Insert data into the 'employees' table
INSERT INTO employees_new (id, first_name, last_name, department, salary, age)
VALUES
    (1, 'John', 'Doe', 'Sales', 60000.00, 28),
    (2, 'Jane', 'Smith', 'HR', 55000.00, 32),
    (3, 'Michael', 'Johnson', 'IT', 75000.00, 40),
    (4, 'Emily', 'Brown', 'Finance', 62000.00, 25),
    (5, 'David', 'Williams', 'Admin', 58000.00, 30);
    
select * from employees_new;

-- comparison operator

-- Equal to (=):Retrieve employees with an age of 32.

SELECT * FROM employees_new WHERE age = 32;

-- Not equal to (<> or !=):Retrieve employees who are not in the Admin department.

SELECT * FROM employees_new WHERE department <> 'Admin';

-- Less than (<) and Greater than (>):Retrieve employees with a salary less than $60000 and age greater than 28.

SELECT * FROM employees_new WHERE salary < 60000 AND age > 28;

-- Less than or equal to (<=) and Greater than or equal to (>=):Retrieve employees with a salary greater than or equal to $58000.

SELECT * FROM employees_new WHERE salary >= 58000;

-- Logical Operators

SELECT * FROM employees_new WHERE department = 'Sales' AND salary > 60000;

SELECT * FROM employees_new WHERE department = 'HR' OR age < 30;

SELECT * FROM employees_new WHERE NOT department = 'IT';

SELECT * FROM employees_new WHERE age BETWEEN 25 AND 35;

SELECT * FROM employees_new WHERE department IN ('Sales', 'IT');
