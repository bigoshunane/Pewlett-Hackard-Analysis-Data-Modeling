--- Departments Table:
--- Remove Table if exists
DROP TABLE IF EXISTS departments CASCADE;

--- Create the Table
CREATE TABLE departments(
	dept_no VARCHAR(5) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(40) NOT NULL
);

--- Departments_employees Table:
--- Remove Table if exists
DROP TABLE IF EXISTS departments_employees;

--- Create the Table
CREATE TABLE departments_employees(
	emp_no INT NOT NULL,
	dept_no VARCHAR(5) NOT NULL REFERENCES departments(dept_no),
	emp_title_id VARCHAR(5) NOT NULL,
	FOREIGN KEY (emp_no, emp_title_id) REFERENCES employees(emp_no, emp_title_id),
	PRIMARY KEY(emp_no, dept_no)
);
--- Drop the Composed Primary Key to allow only the correct number of columns
ALTER TABLE departments_employees DROP column emp_title_id;

--- Department Managers Table:
--- Remove Table if exists
DROP TABLE IF EXISTS dept_managers;

--- Create the Table
CREATE TABLE dept_managers (
	dept_no VARCHAR(5) NOT NULL REFERENCES departments(dept_no),
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(5) NOT NULL,
	FOREIGN KEY (emp_no, emp_title_id) REFERENCES employees(emp_no, emp_title_id),
	PRIMARY KEY(dept_no, emp_no)
);
--- Drop the Composed Primary Key to allow only the correct number of columns
ALTER TABLE dept_managers DROP column emp_title_id;


--- Employees Table:
--- Remove Table if exists
DROP TABLE IF EXISTS employees CASCADE;

--- Create the Table
CREATE TABLE employees(
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(5) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY(emp_no, emp_title_id)
);

--- Salaries Table:
-- Remove Table if exists
DROP TABLE IF EXISTS salaries;

--- Create the Table
CREATE TABLE salaries(
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR(5) NOT NULL,
	FOREIGN KEY (emp_no, emp_title_id) REFERENCES employees(emp_no, emp_title_id),
	salary INT
);
--- Drop the Composed Primary Key to allow only the correct number of columns
ALTER TABLE salaries DROP column emp_title_id;

--- Titles Table:
-- Remove Table if exists
DROP TABLE IF EXISTS titles;

--- Create the Table
CREATE TABLE titles(
	emp_title_id VARCHAR(5) NOT NULL,
	title VARCHAR(30) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no,emp_title_id) REFERENCES employees(emp_no,emp_title_id),
	PRIMARY KEY (emp_title_id, title)
);

-- Drop the Composed Primary Key to allow only the correct number of columns
ALTER TABLE titles DROP column emp_no;