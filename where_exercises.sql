SELECT 'All employees whose first name is either Irena, Vidya or Maya:' AS '';
SELECT first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT 'All employees whose last name begins with an E:' AS '';
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%';

SELECT 'All employees who were hired after 1990:' AS '';
SELECT emp_no, first_name, last_name
FROM employees
WHERE hire_date > '1990%';

SELECT 'All employees who were born on Christmas:' AS '';
SELECT emp_no, first_name, last_name
FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT 'All employees whose last name includes a q:' AS '';
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';