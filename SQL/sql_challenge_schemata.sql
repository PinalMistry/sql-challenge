--Drop Tables if they exist
Drop TABLE IF EXISTS departments;
Drop TABLE IF EXISTS dept_emp;
Drop TABLE IF EXISTS dept_manager;
Drop TABLE IF EXISTS employees;
Drop TABLE IF EXISTS salaries;
Drop TABLE IF EXISTS titles;

--Create the tables 
CREATE TABLE departments(
	    dept_no VARCHAR(30) NOT NULL PRIMARY KEY,
		dept_name VARCHAR(200) NOT NULL
);

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(30)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(30) NOT NULL,
	emp_no INT NOT NULL
);

CREATE TABLE titles (
    title_id VARCHAR   NOT NULL,
    title VARCHAR   NOT NULL,
    PRIMARY KEY (title_id)
);

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL
);

CREATE TABLE employees(
    emp_no INT   NOT NULL,
    emp_title_id VARCHAR NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    sex VARCHAR   NOT NULL,
    hire_date DATE   NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles (title_id),
    PRIMARY KEY (emp_no)
);

--Import the CSV file
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;


