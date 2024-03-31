#Retrieve the names of employees who have no dependents.

SELECT e.FNAME, e.LNAME FROM employee e
WHERE e.SSN NOT IN (
    SELECT d.ESSN FROM dependent d
)
