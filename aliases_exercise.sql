
/*2. Return 10 employees in a result set named "full_name" in the format of "lastname, firstname" for each employee.*/
SELECT CONCAT(first_name, ' ', last_name) AS full_name, birth_date AS DOB
FROM employees
GROUP BY full_name
LIMIT 10;

/*3. Add the date of birth for each employee as "DOB" to the query.*/
SELECT CONCAT(first_name, ' ', last_name) AS full_name, birth_date AS DOB
FROM employees
GROUP BY full_name
LIMIT 10;

/*Update the query to format full name to include the employee 
number so it is formatted as "employee number - lastname, firstname".*/
SELECT CONCAT(emp_no, '-', first_name, ' ', last_name) AS full_name, birth_date AS DOB
FROM employees
GROUP BY full_name
LIMIT 10;