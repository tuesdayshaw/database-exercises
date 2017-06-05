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


SELECT d.dept_name, concat(e.first_name, ' ', e.last_name) AS 'Name', s.salary
FROM employees as e
  JOIN dept_manager as dm
    ON e.emp_no = dm.emp_no
  JOIN departments as d
    ON dm.dept_no = d.dept_no
  JOIN titles as t
    ON e.emp_no = t.emp_no
  JOIN salaries as s
    ON e.emp_no = s.emp_no
WHERE e.emp_no = dm.emp_no
AND s.to_date > now();

SELECT d.dept_name as 'Department', concat(e.first_name, ' ', e.last_name) AS 'Name', s.salary as 'Salary'
FROM salaries AS s
JOIN employees AS e on s.emp_no = e.emp_no
JOIN dept_manager as dm on e.emp_no = dm.emp_no
JOIN departments as d on dm.dept_no = d.dept_no
WHERE s.to_date > NOW()
AND dm.to_date > NOW();

#Bonus: Not finished
SELECT concat(e.first_name, ' ', e.last_name) AS 'Employee Name', d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) AS 'Manager Name'
FROM employees as e
  Left JOIN dept_manager as dm
    ON e.emp_no = dm.emp_no
  JOIN departments as d
    ON dm.dept_no = d.dept_no
WHERE dm.to_date > now() = 'Manager Name';