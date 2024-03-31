# For each project, retrieve project number, project name, the number of employees from
# department 5 who work on the project

SELECT project.PNUMBER, project.PNAME,COUNT(*) FROM project
LEFT JOIN works_on wo on project.PNUMBER = wo.PNO
WHERE project.DNUM = 5
GROUP BY project.PNUMBER