use employees;
-- use a subquery when you only need info from one table, but need to filter data from another table

#Find all the employees with the same hire date as employee 101010 using a sub-query.

SELECT first_name, last_name, hire_date
FROM employees.employees
WHERE hire_date In (
  SELECT hire_date
  FROM employees
  WHERE emp_no = 101010
);


#Find all the titles held by all employees with the first name Aamod.

SELECT title
FROM titles
WHERE emp_no IN (
  SELECT emp_no
  FROM employees
  WHERE first_name = 'Aamod'
);


#Find all the department managers that are female.

SELECT concat(first_name, ' ', last_name) AS 'Department Manager', gender
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM dept_manager
  WHERE dept_manager.to_date > now()
)
AND gender = 'F';


#BONUS Find all the department names that have female managers.

SELECT dept_name
FROM departments
WHERE dept_no IN (
  SELECT dept_no
  FROM dept_manager
  WHERE to_date > now() AND emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE gender = 'F'
  )
);