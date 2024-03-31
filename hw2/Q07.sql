SELECT e.SSN, d.DNAME FROM employee e
LEFT JOIN department d on e.DNO = d.DNUMBER;