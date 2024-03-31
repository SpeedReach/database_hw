# For each project, retrieve the project number, project name, and the number of employees who
# work on that project.

SELECT COUNT(*) AS E_NUM, p.PNUMBER, p.PNAME FROM project p
LEFT JOIN works_on wo on p.PNUMBER = wo.PNO
GROUP BY p.PNUMBER