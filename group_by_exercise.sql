SELECT DISTINCT title
  FROM titles
GROUP BY title ASC ;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'E%'
      AND last_name LIKE '%E'
GROUP BY last_name;