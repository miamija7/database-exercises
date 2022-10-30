USE employees;

SELECT *
FROM employees
WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
ORDER BY first_name ASC;

SELECT *
FROM employees
WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
ORDER BY first_name ASC, last_name ASC;

SELECT *
FROM employees
WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
ORDER BY last_name ASC, first_name ASC;

SELECT *
FROM employees
WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
ORDER BY last_name DESC, first_name DESC;


SELECT *
FROM employees
WHERE last_name LIKE 'E%e'
ORDER BY emp_no;

SELECT *
FROM employees
WHERE last_name LIKE 'E%e'
ORDER BY emp_no DESC;
