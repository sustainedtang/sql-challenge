--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no,e.last_name,e.first_name,e.sex,salaries.salary
FROM employees as e
LEFT JOIN salaries on e.emp_no= salaries.emp_no;

--2. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT dm.dept_no, d.dept_name, e.last_name,e.first_name
FROM dept_manager as dm
INNER JOIN departments as d
on dm.dept_no = d.dept_no
INNER JOIN employees as e
on dm.emp_no = e.emp_no;
--3. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
INNER JOIN dept_emp as de
on e.emp_no = de.emp_no
INNER JOIN departments as d
on de.dept_no = d.dept_no;
--4. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT e.emp_no, last_name, first_name,sex
FROM employees as e
WHERE 
	first_name='Hercules' AND
	last_name LIKE 'B%'
ORDER BY e.emp_no 
--5. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT employees.emp_no,employees.last_name, employees.first_name, departments.dept_name
FROM departments
JOIN dept_emp on departments.dept_no = dept_emp.dept_no
JOIN employees on dept_emp.emp_no = employees.emp_no
where departments.dept_name = 'Sales'
--6. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.emp_no,employees.last_name, employees.first_name, departments.dept_name
FROM departments
JOIN dept_emp on departments.dept_no = dept_emp.dept_no
JOIN employees on dept_emp.emp_no = employees.emp_no
where departments.dept_name in ('Sales','Development')
--7. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, count(*)
FROM employees
GROUP BY last_name
ORDER BY COUNT(*) DESC