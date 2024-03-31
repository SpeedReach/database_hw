SELECT DISTINCT p.PNUMBER FROM project p
LEFT JOIN works_on wo on p.PNUMBER = wo.PNO
LEFT JOIN department d on p.DNUM = d.DNUMBER
WHERE wo.ESSN = (
    SELECT SSN FROM employee
               WHERE LNAME = 'Wong'
    )
OR d.MGRSSN = (
    SELECT SSN FROM employee
               WHERE LNAME = 'Wong'
    )