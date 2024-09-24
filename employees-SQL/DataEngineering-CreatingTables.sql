DROP TABLE IF EXISTS Dept_Emp CASCADE;
DROP TABLE IF EXISTS Dept_Manager CASCADE;
DROP TABLE IF EXISTS Salaries CASCADE;
DROP TABLE IF EXISTS Titles CASCADE;
DROP TABLE IF EXISTS Employees CASCADE;
DROP TABLE IF EXISTS Departments CASCADE;

CREATE TABLE Employees (
    emp_no SERIAL PRIMARY KEY,
    emp_title_id INT,
    birth_date DATE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex CHAR(1),
    hire_date DATE
);

CREATE TABLE Salaries (
    emp_no INT REFERENCES Employees(emp_no),
    salary NUMERIC,
    PRIMARY KEY (emp_no, salary)
);

CREATE TABLE Titles (
    title_id SERIAL PRIMARY KEY,
    title VARCHAR(100)
);

CREATE TABLE Dept_Manager (
    dept_no INT,
    emp_no INT REFERENCES Employees(emp_no),
    PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE Dept_Emp (
    emp_no INT REFERENCES Employees(emp_no),
    dept_no INT,
    PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE Departments (
    dept_no SERIAL PRIMARY KEY,
    department_name VARCHAR(100)
);