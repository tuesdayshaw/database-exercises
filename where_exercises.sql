SELECT first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%';

SELECT emp_no, first_name, last_name
FROM employees
WHERE hire_date > '1990%';

SELECT emp_no, first_name, last_name
FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';