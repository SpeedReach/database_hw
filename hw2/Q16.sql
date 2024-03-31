#Select the social security numbers of all employee who work the same project on some project
#that employee whose SSN = ‘123456789’ works on

SELECT DISTINCT w.ESSN FROM works_on w
WHERE w.PNO IN (SELECT PNO FROM works_on w2 WHERE w2.ESSN = '123456789')
AND w.ESSN != '123456789';