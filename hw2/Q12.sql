#Retrieve the name of each employee who has a dependent with the same first name and same sex as the employee.

SELECT * FROM employee e
LEFT JOIN dependent d on e.SSN = d.ESSN
WHERE e.SEX = d.SEX AND e.LNAME = d.DEPENDENT_NAME
