# retrieve the departments that have more than 2 employees
# who each earn more than $30,000.

SELECT d.DNUMBER FROM department d
LEFT JOIN employee e ON e.DNO = d.DNUMBER
WHERE E.SALARY > 30000
GROUP BY d.DNUMBER
HAVING COUNT(*) > 2;