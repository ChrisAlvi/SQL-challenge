-- List the employee number, last name, first name, sex, and salary of each employee ✅
SELECT * FROM employees;
SELECT * FROM salaries;


SELECT a.emp_no, a.last_name, a.first_name, a.sex, b.salary
FROM employees a
JOIN salaries b ON a.emp_no = b.emp_no


-- List the first name, last name, and hire date for the employees who were hired in 1986 ✅
SELECT * FROM employees;


SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1/1/1986' AND hire_date < '1/1/1987';


-- List the manager of each department along with their department number, department name, employee number, last name, and first name ✅
SELECT * FROM employees;
SELECT * FROM dept_emp
SELECT * FROM departments;


SELECT d.dept_no, de.dept_name, a.emp_no, a.last_name, a.first_name
FROM employees a
JOIN dept_emp d ON a.emp_no = d.emp_no
JOIN departments de ON d.dept_no = de.dept_no;




-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name ✅
SELECT * FROM employees;
SElECT * FROM dept_emp
SELECT * FROM departments;

SELECT d.dept_no, a.emp_no, a.last_name, a.first_name, de.dept_name
FROM employees a
JOIN dept_emp d ON a.emp_no = d.emp_no
JOIN departments de ON d.dept_no = de.dept_no



-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B ✅
SELECT * FROM employees;

SELECT first_name, last_name, sex
FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


-- List each employee in the Sales department, including their employee number, last name, and first name ✅
SELECT * FROM employees;
SELECT * FROM dept_emp;
SELECT * FROM departments;


SELECT a.emp_no, a.last_name, a.first_name
FROM employees a
JOIN dept_emp de ON a.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';


-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name ✅
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM dept_emp;

SELECT a.emp_no, a.last_name, a.first_name, d.dept_name
FROM employees a
JOIN dept_emp de ON a.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';


-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT last_name, COUNT(last_name) AS "shared_last_name"
FROM employees
GROUP BY last_name
ORDER BY "shared_last_name" DESC;





