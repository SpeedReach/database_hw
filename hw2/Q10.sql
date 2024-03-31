SELECT e.SALARY *1.15 FROM department d
LEFT JOIN employee e ON d.DNUMBER = e.DNO
WHERE d.DNAME = 'Research'