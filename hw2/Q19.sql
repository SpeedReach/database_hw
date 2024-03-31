# Find the sum of salary, maximum salary, the minimum salary, and the average salary among
# employees who work for the 'Research' department.


SELECT SUM(salary) AS sum_salary, MAX(salary) AS max_salary, MIN(salary) AS min_salary, AVG(salary) AS avg_salary
FROM employee e
LEFT JOIN department d ON d.DNUMBER = e.DNO
WHERE d.DNAME = 'Research';