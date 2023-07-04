--1. List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM employees as e
INNER JOIN salaries AS s
ON e.emp_no = s.emp_no

-- result: Total rows: 1000 of 300024


-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN to_date('1986-01-01','YYYY-MM-DD') AND to_date('1986-12-31','YYYY-MM-DD')
-- result: Total rows: 1000 of 36150
-- https://stackoverflow.com/questions/15817871/postgresql-filter-a-date-range


-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM department_manager as dm
INNER JOIN department as d
ON dm.dept_no = d.dept_no
INNER JOIN employees as e
ON dm.emp_no = e.emp_no

--results: Total rows: 24 of 24
 
-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
FROM department_employee as de
INNER JOIN employees as e
ON de.emp_no = e.emp_no
INNER JOIN department as d
ON de.dept_no = d.dept_no

-- Results: Total rows: 1000 of 331603


-- 5.List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

-- result: Total rows: 20 of 20


-- 6. List each employee in the Sales department, including their employee number, last name, and first name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN department_employee as dp
ON e.emp_no = dp.emp_no
INNER JOIN department AS d
ON d.dept_no = dp.dept_no
WHERE d.dept_name = 'Sales'

-- result: Total rows: 1000 of 52245


-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN department_employee as dp
ON e.emp_no = dp.emp_no
INNER JOIN department AS d
ON d.dept_no = dp.dept_no
WHERE d.dept_name IN ('Sales', 'Development')

-- result: Total rows: 1000 of 137952


-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(last_name) AS total_num
FROM employees
GROUP BY last_name
ORDER BY total_num DESC

-- results Total rows: 1000 of 1638