/*2. Update your query for 'Irena', 'Vidya', or 'Maya'. 
Use count(*) and GROUP BY to find the number of employees 
for each gender with those names - results are 441 M & 268 F - need group by or
results limited to one row*/
SELECT count(*), gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;

/*3. Update your queries for employees whose names start and/or end with 'E'. 
Use concat() to combine their first and last name together as a single column in your results.*/
SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE 'e%e'

/*For your query of employees born on Christmas and hired in the 90s, 
use datediff() to find how many days they have been working at the company 
(Hint: You will also need to use now() or curdate())*/

SELECT concat(first_name, ' ', last_name) AS full_name, datediff(now(), hire_date) 
AS days_since_hired
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%-12-25'
ORDER BY days_since_hired;

/*Add a GROUP BY clause to your query for last names with 'q' and not 'qu' 
to find the distinct combination of first and last names. You will find there 
were some duplicate first and last name pairs in your previous results. 
Add a count() to your results and use ORDER BY to make it easier to find 
employees whose unusual name is shared with others.*/
SELECT concat(first_name, ' ', last_name) AS full_name, count(*)
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY full_name
ORDER BY count(*) DESC;