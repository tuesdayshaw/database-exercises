SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', d.dept_name AS 'Department Name'
FROM employees as e
  JOIN dept_manager as dm
    ON e.emp_no = dm.emp_no
  JOIN departments as d
    ON dm.dept_no = d.dept_no;

