/*2. List the first 10 distinct last name sorted in descending order*/

SELECT last_name
FROM employees
GROUP BY last_name DESC
LIMIT 10;

/*3. Find your query for employees born on Christmas and hired in the 90s from 
order_by_exercises.sql & update to find the first 5 employees*/

SELECT hire_date AS '90s hires Christmas birth', concat(first_name, ' ', last_name) AS full_name, birth_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC
LIMIT 5;

/*4. Update the query to find the tenth batch of results...OFFSET 46*/

SELECT hire_date AS '90s hires Christmas birth', concat(first_name, ' ', last_name) AS full_name, birth_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC
LIMIT 5 OFFSET 45;