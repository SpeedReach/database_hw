# Find the number of employees in the 'Research' department

SELECT COUNT(*) FROM employee e
LEFT JOIN department d ON e.DNO = d.DNUMBER
WHERE d.DNAME = 'Research';