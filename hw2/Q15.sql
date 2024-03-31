#Retrieve names of all employees who have two or more dependents


SELECT e.FNAME, e.LNAME FROM employee e
WHERE (SELECT COUNT(*) FROM dependent d WHERE d.ESSN = e.SSN) >= 2;