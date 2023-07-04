
-- Create department table
CREATE TABLE department(
	dept_no VARCHAR (10) NOT NULL PRIMARY KEY,
	dept_name (255) VARCHAR NOT NULL
);

-- view department table
SELECT * 
FROM department



-- Create titles table
CREATE TABLE titles(
	title_id VARCHAR (5) NOT NULL PRIMARY KEY,
	title VARCHAR (255)NOT NULL
);

-- view titles table
SELECT * 
FROM titles



-- IMPORTANT! Run this code before importing csv file in order to not get an error 
ALTER DATABASE "Pewlett_Hackard_DB" SET datestyle TO "ISO, MDY";

-- Create employees table
CREATE TABLE employees(
	emp_no  INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR (5) NOT NULL,
	birth_date DATE,
	first_name VARCHAR (30) NOT NULL,
	last_name VARCHAR (30) NOT NULL,
	sex VARCHAR (1) NOT NULL,
	hire_date DATE, NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- view employees table
SELECT *
FROM employees



-- create department_manager table
CREATE TABLE department_manager(
	dept_no VARCHAR (10) NOT NULL,
	emp_no  INT NOT NULL,
	FOREIGN KEY (dep_no) REFERENCES department(dep_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- view department_manager table
SELECT *
FROM department_manager




-- create department_employee table
CREATE TABLE department_employee(
	emp_no  INT NOT NULL,
	dept_no VARCHAR (10) NOT NULL,
	FOREIGN KEY (dep_no) REFERENCES department(dep_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- view department_employee table
SELECT *
FROM department_employee



-- create salaries table
CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- view salaries table
SELECT *
FROM salaries

