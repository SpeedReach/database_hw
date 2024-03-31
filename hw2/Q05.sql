SELECT e.FNAME, e.LNAME, im.FNAME, im.LNAME FROM employee e
LEFT JOIN employee im on e.SUPERSSN = im.SSN;