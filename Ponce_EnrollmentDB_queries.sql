-- Ponce_EnrollmentDB_queries.sql
-- This file contains queries for practice and exercises

USE Ponce_EnrollmentDB;

-- 1 TO 5 : USING WHERE
-- 1. Retrieve all students in BSIT program
SELECT * FROM Students WHERE Program = 'BSIT';

-- 2. Retrieve all courses under Computer Science department
SELECT * FROM Courses WHERE Department = 'Computer Science';

-- 3. Retrieve students whose last name starts with 'M'
SELECT * FROM Students WHERE Last_Name LIKE 'M%';

-- 4. Retrieve enrollments where the grade is >= 85
SELECT * FROM Enrollments WHERE Grade >= 85;

-- 5. Retrieve all students born after '2003-01-01'
SELECT * FROM Students WHERE Birth_Date > '2003-01-01';
-- 6 TO 9 USING BETWEEN -- 
-- 6. Retrieve all courses with Units between 2 and 4
SELECT * FROM Courses WHERE Units BETWEEN 2 AND 4;

-- 7. Retrieve all students whose Birth_Date is between '2000-01-01' and '2005-12-31'
SELECT * FROM Students WHERE Birth_Date BETWEEN '2000-01-01' AND '2005-12-31';

-- 8. Retrieve all enrollments where the Grade is between 75 and 90
SELECT * FROM Enrollments WHERE Grade BETWEEN 75 AND 90;

-- 9. Retrieve all enrollments made between '2023-01-01' and '2023-06-30'
SELECT * FROM Enrollments WHERE Enrollment_Date BETWEEN '2023-01-01' AND '2023-06-30';

-- 10 TO 11 IS COMBINATION CONDITIONS --
-- 10. Retrieve all students enrolled in BSCS whose last name starts with 'S'
SELECT * FROM Students
WHERE Program = 'BSCS' AND Last_Name LIKE 'S%';

-- 11. Retrieve all courses under the IT Department with Units > 3
SELECT * FROM Courses
WHERE Department = 'Information Technology' AND Units > 3;
