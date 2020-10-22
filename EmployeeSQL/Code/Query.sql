SELECT e.emp_no, last_name, first_name, gender, s.salary
FROM employees AS e JOIN salaries AS s ON e.emp_no = s.emp_no;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986';

SELECT d.dept_no, "DEPT_NAME", e.emp_no, e.last_name, e.first_name
FROM departments AS d JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no; 

SELECT d.dept_no, "DEPT_NAME", e.emp_no, e.last_name, e.first_name
FROM departments AS d JOIN dept_emp AS dm ON d.dept_no = dm.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no;

SELECT e.emp_no, e.last_name, e.first_name, "DEPT_NAME"
FROM departments AS d JOIN dept_emp AS dm ON d.dept_no = dm.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no
WHERE "DEPT_NAME" = 'Sales'; 

select e.emp_no, e.last_name, e.first_name, "DEPT_NAME"
from departments as d join dept_emp as dm on d.dept_no = dm.dept_no
join employees as e on dm.emp_no = e.emp_no
WHERE "DEPT_NAME" = 'Sales' OR "DEPT_NAME" = 'Development';

SELECT last_name, COUNT(last_name) FROM employees GROUP BY last_name
ORDER BY COUNT(last_name) DESC;
