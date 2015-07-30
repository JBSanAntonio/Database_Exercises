/*2. List the first 10 distinct last name sorted in descending order*/

SELECT last_name
FROM employees
GROUP BY last_name DESC
LIMIT 10;

/*3. Find your query for employees born on Christmas and hired in the 90s from 
order_by_exercises.sql & update to find the first 5 employees*/


/*4. Update the query to find the tenth batch of results...ORDER 46*/