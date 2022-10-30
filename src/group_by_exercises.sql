USE employees;

SELECT title
FROM titles
GROUP BY title;

SELECT CONCAT(first_name , ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%e'
GROUP BY CONCAT(first_name , ' ', last_name);

SELECT COUNT(last_name), last_name
FROM employees
WHERE last_name NOT LIKE '%qu%' AND last_name LIKE '%q%'
GROUP BY last_name;

SELECT count(*), gender
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya'
GROUP BY gender;