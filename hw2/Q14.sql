#List the names of managers who have at least one dependent.


SELECT e.FNAME, e.LNAME FROM employee e
WHERE e.SSN in (
    SELECT d.MGRSSN FROM department d
)
AND e.SSN IN (
    SELECT d.ESSN FROM dependent d
)

