-- Ponce_Company_Operations.sql
USE Ponce_Company;

-- 1) Employees hired between Jan 1, 2016 and Dec 31, 2016
SELECT * FROM Employee
WHERE EmpHiredDate BETWEEN '2016-01-01' AND '2016-12-31';


-- 2) Update job description of J104 to Graphic Designer
UPDATE Job
SET JobDescription = 'Graphic Designer'
WHERE JobCode = 'J104';


-- 3) Retrieve employees who are Programmer, System Analyst, or Database Administrator

-- EXPLANATION:
-- Employee table contains JobCode only (like J101, J102...)
-- Job table contains JobDescription (like "Programmer", "System Analyst"...)
-- To match them, we use JOIN so we can filter by the job description.

SELECT e.*                        -- Get all employee details
FROM Employee e                   -- e = shortcut (alias) for Employee table
JOIN Job j                        -- j = alias for Job table
    ON e.JobCode = j.JobCode      -- This connects Employee to Job based on JobCode
WHERE j.JobDescription IN (       -- Filter by the job descriptions we want
    'Programmer',
    'System Analyst',
    'Database Administrator'
);


-- 4) Employees whose last name ends with 'S'
SELECT * FROM Employee
WHERE EmpLName LIKE '%S';


-- 5) Employees whose first name starts with 'K' and ends with 'N'
-- Example: "Kevin", "Keen", "Kern"
SELECT * FROM Employee
WHERE EmpFName LIKE 'K%N';


-- 6) Employees hired AFTER 2016 AND have JobCode J102
SELECT * FROM Employee
WHERE EmpHiredDate > '2016-12-31'
AND JobCode = 'J102';


-- 7) Employees hired in 2016 OR JobCode is J101
SELECT * FROM Employee
WHERE YEAR(EmpHiredDate) = 2016
OR JobCode = 'J101';
