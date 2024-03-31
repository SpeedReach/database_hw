#Retrieve the name of each employee who works on all the
#projects controlled by department number 5.

Select e.Fname, e.Lname
From Employee e
WHERE NOT EXISTS(
    SELECT * FROM works_on w
    WHERE NOT EXISTS(
        SELECT * FROM Project p
        WHERE p.Dnum = 5 AND w.Pno = p.Pnumber AND w.Essn = e.Ssn
    )
)
