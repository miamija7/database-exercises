# Join Example Database
USE join_test_db;

SELECT users.name as user_name, roles.name as role_name
FROM users
JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

SELECT COUNT(users.name), roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id
GROUP BY roles.name;


# Employees Database
USE employees;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
JOIN dept_manager dm ON e.emp_no = dm.emp_no
JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE dm.to_date > CURDATE();

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
JOIN dept_manager dm ON e.emp_no = dm.emp_no
JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE dm.to_date > CURDATE() AND e.gender = 'F';

SELECT t.title AS Title, COUNT(t.emp_no)
FROM titles AS t
JOIN employees AS e ON e.emp_no = t.emp_no
JOIN dept_emp de on e.emp_no = de.emp_no
JOIN departments d on de.dept_no = d.dept_no
WHERE t.to_date > CURDATE() AND d.dept_name = 'Customer Service' AND de.to_date > CURDATE()
GROUP BY t.title;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary AS 'Salary'
FROM employees AS e
JOIN dept_manager dm ON e.emp_no = dm.emp_no
JOIN departments AS d ON d.dept_no = dm.dept_no
JOIN salaries s on e.emp_no = s.emp_no
WHERE dm.to_date > CURDATE() AND s.to_date > CURDATE();

SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee, d.dept_name AS Department, CONCAT(e2.first_name, ' ', e2.last_name) AS Manager
FROM employees AS e
JOIN dept_emp de on e.emp_no = de.emp_no
JOIN departments d on de.dept_no = d.dept_no
JOIN dept_manager dm on de.dept_no = dm.dept_no
JOIN employees e2 on e2.emp_no = dm.emp_no
WHERE de.to_date > CURDATE() AND dm.to_date > CURDATE();