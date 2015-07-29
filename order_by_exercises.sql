SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE (first_name = 'Irena'
	OR first_name = 'Vidya'
	OR first_name = 'Maya')
	AND gender = 'm'
ORDER BY full_name, first_name DESC;

SELECT *
FROM employees
WHERE last_name LIKE 'e%e'
ORDER BY emp_no DESC;

SELECT hire_date AS 'when we hired this rockstar', concat(first_name, ' ', last_name) AS full_name, birth_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC; 

SELECT *
FROM employees
WHERE last_name LIKE '%q%'
	AND last_name NOT LIKE '%qu%';