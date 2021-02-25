-- List the following details fo each employee: employee number, last name, first name, sex, salary
SELECT e.emp_no AS "Employee Number", e.last_name AS "Last Name", e.first_name AS "First Name", e.sex AS "Sex", s.salary AS "Salary"
FROM employees AS e
INNER JOIN salaries AS s ON
e.emp_no=s.emp_no

-- List first name, last name and hire date for employees who were hired in 1986
SELECT first_name AS "First Name", last_name AS "Last Name", hire_date AS "Hire Date" 
FROM employees
WHERE hire_date between '1986-01-01' and '1986-12-31'


