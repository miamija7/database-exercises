USE employees;

SELECT *
FROM employees
JOIN dept_emp using(emp_no)
WHERE to_date > now() AND hire_date = (
    SELECT hire_date
    FROM employees
	WHERE emp_no = 101010
);

SELECT DISTINCT title
FROM titles
WHERE emp_no IN (
   SELECT emp_no
   FROM employees
   JOIN dept_emp USING(emp_no)
   WHERE first_name = 'aamod'
   AND to_date > now()
);

SELECT COUNT(*)
FROM employees
WHERE emp_no NOT IN (
    SELECT emp_no
    FROM dept_emp
    WHERE to_date > now()
);

SELECT *
FROM employees
WHERE emp_no NOT IN (
    SELECT emp_no
    FROM salaries
    WHERE to_date > now()
);

SELECT *
FROM employees
WHERE emp_no in (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > now()
) AND gender = "F";


SELECT emp_no
FROM salaries s
    JOIN employees e using(emp_no)
WHERE to_date > now() AND  salary > (select avg(salary) from salaries) ;


SELECT max(salary) FROM salaries WHERE to_date > now();

SELECT stddev(salary) FROM salaries WHERE to_date > now();

SELECT count(*)
FROM salaries
WHERE to_date > now() AND salary > (
    (SELECT max(salary) FROM salaries WHERE to_date > now()) -
    (SELECT std(salary) FROM salaries WHERE to_date > now())
);

SELECT count(*)
FROM salaries
WHERE to_date > now();

SELECT ((SELECT count(*)
FROM salaries
WHERE to_date > now()
AND salary > ((SELECT max(salary) FROM salaries WHERE to_date > now()) - (SELECT std(salary) FROM salaries WHERE to_date > now())))/(SELECT count(*)
FROM salaries
WHERE to_date > now())) * 100 as "percentage of salaries within 1 Stdev of Max";