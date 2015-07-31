/*Use join, left join, and right join to combine results from the users 
and roles tables as we did in the lesson.*/
SELECT users.name as user_name, roles.name as role_name
FROM users
JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;


/*4. Use count and the appropriate join type to get a list of roles 
along with the number of users that has the role. Hint: You will also need 
to use group by in the query.*/

SELECT r.name as role_name,  COUNT(u.role_id) AS total_by_role
FROM roles r
JOIN users u ON u.role_id = r.id
GROUP BY role_name;


/*6. Using the example in the "Associative Table Joins" section as a guide, write a query that shows each department along with the name of the current manager for that department.
*/
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e 
JOIN dept_manager as dm ON dm.emp_no=e.emp_no
JOIN departments as d ON dm.dept_no=d.dept_no;

/*1. The name and title of all employees whose title starts with "Senior"*/
SELECT e.first_name, e.last_name, t.title 
FROM employees as e 
JOIN titles t ON t.emp_no=e.emp_no
WHERE t.title LIKE 'Senior%' AND t.to_date >= now();
GROUP BY full_name;


/*2. The current department and manager name where the manager is female
add */
SELECT d.dept_name, e.first_name, e.last_name 
FROM employees e
JOIN dept_manager dm ON dm.emp_no = e.emp_no
JOIN departments d ON d.dept_no = dm.dept_no 
WHERE e.gender='F' AND dm.to_date >= now();

Development	Leon DasSarma
Finance	Isamu Legleitner
Human Resources	Karsten Sigstam
Research	Hilary Kambil

/*3. Current salaries for all current managers*/
SELECT d.dept_name, e.first_name, e.last_name, s.salary
FROM employees e
JOIN dept_manager dm ON dm.emp_no= e.emp_no
JOIN departments d ON dm.dept_no = d.dept_no
JOIN salaries s ON s.emp_no = e.emp_no
WHERE s.to_date >= now() AND t.to_date >= now();

Customer Service	Yuchang Weedman	58745
Development	Leon DasSarma	74510
Finance	Isamu Legleitner	83457
Human Resources	Karsten Sigstam	65400
Marketing	Vishwani Minakawa	106491
Production	Oscar Ghazalie	56654
Quality Management	Dung Pesch	72876
Research	Hilary Kambil	79393
Sales	Hauke Zhang	101987


/*4. Current average salary of each title - only obtaining average for Sr Engineer
need for all titles*/

SELECT t.title, AVG(s.salary) AS average_salary
FROM salaries s 
JOIN titles t ON t.emp_no = s.emp_no
WHERE s.to_date >= NOW() AND t.to_date >= NOW()
GROUP BY t.title
ORDER BY average_salary;

Assistant Engineer	57317.5736
Engineer	59602.7378
Staff	67330.6652
Technique Leader	67506.5903
Senior Engineer	70823.4376
Manager	77723.6667
Senior Staff	80706.4959

/*Select every employee's first & last name, department name, and the 
first and last name of their manager. Sort by department name, 
employee last name, employee first name. (Table and column aliases 
SEE BELOW - employees m ON m.emp_no = dm.emp_no - are ESSENTIAL for this one)*/

SELECT e.first_name, e.last_name, d.dept_name, m.first_name, m.last_name
FROM employees e 
JOIN dept_emp de ON de.emp_no = e.emp_no
JOIN departments d ON d.dept_no = de.dept_no
JOIN dept_manager dm ON dm.dept_no = d.dept_no
JOIN employees m ON m.emp_no = dm.emp_no
WHERE dm.to_date >= now()
  AND de.to_date >= now()
/*SORT BY d.dept_name, e.last_name, e.first_name;*/