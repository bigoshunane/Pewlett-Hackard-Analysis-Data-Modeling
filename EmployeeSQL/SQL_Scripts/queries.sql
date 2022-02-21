------ The following script performs the following queries from the database named Employee_DB:

--- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
--- 2. List first name, last name, and hire date for employees who were hired in 1986.
--- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
--- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
--- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
--- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
--- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
--- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.



---1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no AS Employee_Number, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no
LIMIT (10);

--- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE employees.hire_date > '1986-1-1'::date AND employees.hire_date < '1987-1-1'::date
LIMIT (10);

--- 3. List the manager of each department with the following information: 
--- department number, department name, the manager's employee number, last name, first name.

SELECT dept_managers.dept_no, departments.dept_name, dept_managers.emp_no, employees.last_name, employees.first_name
FROM dept_managers
JOIN employees 
ON dept_managers.emp_no = employees.emp_no
JOIN departments 
ON dept_managers.dept_no = departments.dept_no
LIMIT (10);

--- 4. List the department of each employee with the following information: 
--- employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN departments_employees 
ON employees.emp_no = departments_employees.emp_no
JOIN departments 
ON departments_employees.dept_no = departments.dept_no
LIMIT (10);

--- 5. List first name, last name, and sex for employees
--- whose first name is "Hercules" and last names begin with "B." 

SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
LIMIT (10);

--- 6. List all employees in the Sales department, 
--- including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN departments_employees 
ON employees.emp_no = departments_employees.emp_no
JOIN departments 
ON departments_employees.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales'
LIMIT (10);

--- 7. List all employees in the Sales and Development departments, 
--- including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN departments_employees 
ON employees.emp_no = departments_employees.emp_no
JOIN departments 
ON departments_employees.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development'
LIMIT (10);

--- 8. In descending order, list the frequency count of employee last names,
--- i.e., how many employees share each last name.
SELECT employees.last_name, Count (*)
FROM employees
GROUP BY employees.last_name
ORDER BY Count (*) DESC;



