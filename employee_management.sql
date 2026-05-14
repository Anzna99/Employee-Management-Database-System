-- Create Database
CREATE DATABASE EmployeeManagement;

-- Use Database
USE EmployeeManagement;

-- Create Department Table
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Create Employee Table
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    age INT,
    salary DECIMAL(10,2),
    city VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id)
    REFERENCES Department(dept_id)
);

-- Insert Data into Department
INSERT INTO Department VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Marketing');

-- Insert Data into Employee
INSERT INTO Employee VALUES
(101, 'Rahul', 24, 50000, 'Chennai', 3),
(102, 'Anjali', 26, 60000, 'Bangalore', 2),
(103, 'Vikram', 28, 75000, 'Hyderabad', 3),
(104, 'Sneha', 25, 45000, 'Mumbai', 1),
(105, 'Karthik', 27, 55000, 'Chennai', 4);

-- View All Employees
SELECT * FROM Employee;

-- Search Employees with Salary > 50000
SELECT * FROM Employee
WHERE salary > 50000;

-- Employees from Chennai
SELECT * FROM Employee
WHERE city = 'Chennai';

-- Sort Employees by Salary
SELECT * FROM Employee
ORDER BY salary DESC;

-- Count Number of Employees
SELECT COUNT(*) AS Total_Employees
FROM Employee;

-- Average Salary
SELECT AVG(salary) AS Average_Salary
FROM Employee;

-- Join Query
SELECT Employee.emp_name,
       Department.dept_name
FROM Employee
INNER JOIN Department
ON Employee.dept_id = Department.dept_id;

-- Update Employee Salary
UPDATE Employee
SET salary = 65000
WHERE emp_id = 102;

-- Delete Employee Record
DELETE FROM Employee
WHERE emp_id = 104;
