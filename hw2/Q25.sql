# For each department that has more than 2 employees, retrieve the department number and the
# number of its employees who are making more than $30,000.


SELECT e.DNO, COUNT(*) FROM employee e
WHERE e.DNO IN (
    SELECT d.DNUMBER
    FROM department d
    JOIN employee
    WHERE DNO = d.DNUMBER
    GROUP BY d.DNUMBER
    HAVING COUNT(*) >= 2
) AND e.SALARY > 30000
GROUP BY e.DNO