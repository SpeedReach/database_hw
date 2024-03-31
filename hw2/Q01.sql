SELECT e.FNAME, e.LNAME, e.ADDRESS FROM department d
LEFT JOIN employee e on d.DNUMBER = e.DNO
WHERE d.DNAME = 'Research'
