CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR);

CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR,
	PRIMARY KEY (dept_no,emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no));

SELECT * FROM 

CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no INT,
	PRIMARY KEY (dept_no,emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no));

CREATE TABLE employees (
	emp_no INT,
	emp_title_id VARCHAR ,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE,
	PRIMARY KEY(emp_no));
ALTER TABLE employees 
ADD FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)

SELECT * FROM employees
CREATE TABLE salaries (
	emp_no INT,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no));

CREATE TABLE titles (
	title_id VARCHAR,
	title VARCHAR,
	PRIMARY KEY (title_id));
