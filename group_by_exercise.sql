
/*2. In your script, use DISTINCT to find the unique titles in the titles table.*/
SELECT DISTINCT title
FROM titles

/*3. Update the previous query to sort the results alphabetically.*/
SELECT DISTINCT title
FROM titles
ORDER BY title;

/*4. Find your query for employees whose last names start and end with 'E'. Update the query find just the unique last names that start and end with 'E' using GROUP BY
*/
SELECT last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name

/*5. Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'
*/
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name, first_name;

/*6. Find the unique last names with a 'q' but not 'qu'. You may use either DISTINCT or GROUP BY
*/
SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY full_name;

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
	AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

