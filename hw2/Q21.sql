# For each department, retrieve the department number, the number of employees in the
# department, and their average salary

SELECT d.DNUMBER,COUNT(*) AS E_NUM , AVG(e.SALARY) FROM department d
LEFT JOIN employee e ON d.DNUMBER = e.DNO
GROUP BY d.DNUMBER;
