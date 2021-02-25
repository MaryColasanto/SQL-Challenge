-- List the following details fo each employee: employee number, last name, first name, sex, salary
SELECT e.emp_no AS "Employee Number", e.last_name AS "Last Name", e.first_name AS "First Name", e.sex AS "Sex", s.salary AS "Salary"
FROM employees AS e
INNER JOIN salaries AS s ON
e.emp_no=s.emp_no;



-- List first name, last name and hire date for employees who were hired in 1986
SELECT first_name AS "First Name", last_name AS "Last Name", hire_date AS "Hire Date" 
FROM employees
WHERE hire_date between '1986-01-01' and '1986-12-31';



-- List the manager of each department with the following information: department number, department name, 
-- the manager's employee number, last name and first name
-- manager title id = m0001

SELECT d.dept_no AS "Department Number", d.dept_name AS "Department Name", e.emp_no AS "Employee Number", e.last_name AS "Last Name", e.first_name AS "First Name"
FROM departments AS d
JOIN dept_manager AS dm
	ON d.dept_no=dm.dept_no 
JOIN employees AS e
	ON dm.emp_no=e.emp_no
WHERE emp_title_id='m0001'


-- List the department of each empolyee with the following information: employee number, last name, first name, department name
SELECT e.emp_no AS "Employee Number", e.last_name AS "Last Name", e.first_name AS "First Name", d.dept_name AS "Department Name"  
FROM departments AS d
JOIN dept_emp AS de
	ON d.dept_no=de.dept_no 
JOIN employees AS e
	ON de.emp_no=e.emp_no
	
	



