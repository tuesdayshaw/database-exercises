SELECT title, count(*)
FROM employees as e
  JOIN dept_manager as dm
    ON e.emp_no = dm.emp_no
  JOIN departments as d
    ON dm.dept_no = d.dept_no
  JOIN titles as t
    ON e.emp_no = t.emp_no
WHERE d.dept_no = 'd009';

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
AND s.to_date > curdate();

