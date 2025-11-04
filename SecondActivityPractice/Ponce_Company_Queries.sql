-- Ponce_Company_Operations.sql

USE Ponce_Company;

-- 4. Employees hired between Jan 1, 2016 and Dec 31, 2016
SELECT * FROM Employee
WHERE EmpHiredDate BETWEEN '2016-01-01' AND '2016-12-31';

-- 5. Update job description of J104 to Graphic Designer
UPDATE Job SET JobDescription = 'Graphic Designer' WHERE JobCode = 'J104';

-- 6. Employees who work as Programmer, System Analyst, or Database Administrator
SELECT e.*
FROM Employee e
JOIN Job j ON e.JobCode = j.JobCode
WHERE j.JobDescription IN ('Programmer', 'System Analyst', 'Database Administrator');

-- 7. Employees whose last name ends with 'S'
SELECT * FROM Employee WHERE EmpLName LIKE '%S';

-- 8. Employees whose first name starts with 'K' and ends with 'N'
SELECT * FROM Employee WHERE EmpFName LIKE 'K%N';

-- 9. Employees hired after 2016 AND JobCode J102
SELECT * FROM Employee
WHERE EmpHiredDate > '2016-12-31' AND JobCode = 'J102';

-- 10. Employees hired in 2016 OR JobCode J101
SELECT * FROM Employee
WHERE YEAR(EmpHiredDate) = 2016 OR JobCode = 'J101';
