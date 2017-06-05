use employees;


SELECT *
FROM employees
  JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
  JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE dept_manager.to_date > now();


SELECT t.title, count(*) as Count
FROM titles as t
JOIN employees as e on t.emp_no = e.emp_no
JOIN dept_emp as de on e.emp_no = de.emp_no
JOIN departments as d on de.dept_no = d.dept_no
WHERE t.to_date > now()
AND de.to_date > now()
and d.dept_name = 'Customer Service'
GROUP BY t.title;


SELECT d.dept_name as 'Department', concat(e.first_name, ' ', e.last_name) AS 'Name', s.salary as 'Salary'
FROM salaries AS s
JOIN employees AS e on s.emp_no = e.emp_no
JOIN dept_manager as dm on e.emp_no = dm.emp_no
JOIN departments as d on dm.dept_no = d.dept_no
WHERE s.to_date > NOW()
AND dm.to_date > NOW();

#Bonus Find the names of all current employees, their department name, and their current manager's name.

SELECT concat(e.first_name, ' ', e.last_name) AS 'Employee Name',
  d.dept_name as 'Department Name',
  concat(e2.first_name, ' ', e2.last_name) AS 'Manager Name'
FROM employees as e
  JOIN dept_emp as de
    ON e.emp_no = de.emp_no
  JOIN departments as d
    ON de.dept_no = d.dept_no
  JOIN dept_manager as dm
  ON d.dept_no = dm.dept_no
  JOIN employees as e2
  on dm.emp_no = e2.emp_no
WHERE de.to_date > now()
and dm.to_date > now();