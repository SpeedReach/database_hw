# List the names of employees whose salary is greater than the salary of all the employees in
# department 5.


SELECT FNAME, LNAME FROM employee WHERE SALARY > ALL (SELECT SALARY FROM employee WHERE DNO = 5);