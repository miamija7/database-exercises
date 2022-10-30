USE employees;

# SELECT CONCAT(first_name, ' ', last_name) AS 'Name'
# FROM employees
# WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
# ORDER BY first_name ASC;

# SELECT *
# FROM employees
# WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
# ORDER BY first_name ASC, last_name ASC;

# SELECT *
# FROM employees
# WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
# ORDER BY last_name ASC, first_name ASC;

# SELECT *
# FROM employees
# WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
# ORDER BY last_name DESC, first_name DESC;


SELECT emp_no AS 'Employee Number', CONCAT(first_name, ' ', last_name) AS 'Name'
FROM employees
WHERE last_name LIKE 'E%e'
ORDER BY emp_no;

SELECT *, DATEDIFF(hire_date, curdate()) AS 'Days at company'
FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) = 25
AND year(hire_date) BETWEEN 1990 AND 1999
ORDER BY birth_date, hire_date DESC;

# SELECT *
# FROM employees
# WHERE last_name LIKE 'E%e'
# ORDER BY emp_no DESC;
