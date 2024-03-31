# For each project on which more than 2 employees work, retrieve the project number, project
# name, and the number of employees who work on that project.

SELECT p.PNUMBER, p.PNAME,COUNT(*)  FROM project p
JOIN works_on wo on p.PNUMBER = wo.PNO
GROUP BY p.PNUMBER
HAVING COUNT(*) > 2;