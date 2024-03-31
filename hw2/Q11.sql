#Retrieve a list of employees and the projects they are working on, ordered by descending order
#of department and ascending order on LName, Fname.

SELECT * FROM employee e
LEFT JOIN works_on w ON e.ssn = w.essn
LEFT JOIN project p on p.PNUMBER = w.PNO
LEFT JOIN department d on d.DNUMBER = p.DNUM
ORDER BY d.DNAME DESC, e.LNAME, e.FNAME;

