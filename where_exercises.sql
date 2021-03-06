SELECT 'All employees whose first name is either Irena, Vidya or Maya:' AS '';
SELECT first_name, last_name
FROM employees
WHERE (
  first_name = 'Irena'
  OR first_name = 'Vidya'
  OR first_name = 'Maya'
)
AND gender = 'M';

SELECT 'All employees whose last name starts OR ends with an E:' AS '';
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%E';

SELECT 'All employees whose last name starts AND ends with an E:' AS '';
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E';

SELECT 'All employees who were hired between 1990 and 1999:' AS '';
SELECT emp_no, first_name, last_name
FROM employees
WHERE hire_date LIKE '199%';

SELECT 'All employees who were born on Christmas:' AS '';
SELECT emp_no, first_name, last_name
FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT 'All employees who were hired between 1990 and 1999 AND born on Christmas:' AS '';
SELECT emp_no, first_name, last_name
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%-12-25';

SELECT 'All employees whose last name includes a q and not qu:' AS '';
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';