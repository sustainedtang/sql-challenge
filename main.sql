DROP TABLE departments
CREATE TABLE departments (
	dept_no VARCHAR,
	dept_name VARCHAR,
);
ALTER TABLE departments ADD PRIMARY KEY (dept_no);
SELECT * FROM departments
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR);
CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no INT);
CREATE TABLE employees (
	emp_no INT,
	emp_title_id VARCHAR ,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE);
CREATE TABLE salaries (
	emp_no INT,
	salary INT);
CREATE TABLE titles (
	title_id VARCHAR,
	title VARCHAR);
	
