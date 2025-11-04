-- Full SQL script to run (CREATE DB, tables, insert sample data, ALTER) --
-- CAN BE INSERTED SA CMD -- 
-- 1. Create database and use it
CREATE DATABASE IF NOT EXISTS Ponce_EnrollmentDB;
USE Ponce_EnrollmentDB;

-- 2. Create tables
CREATE TABLE IF NOT EXISTS Students (
  Student_ID INT PRIMARY KEY,
  First_Name VARCHAR(50) NOT NULL,
  Last_Name VARCHAR(50) NOT NULL,
  Birth_Date DATE,
  Program VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Courses (
  Course_ID INT PRIMARY KEY,
  Course_Name VARCHAR(100) NOT NULL,
  Units INT NOT NULL,
  Department VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Enrollments (
  Enrollment_ID INT PRIMARY KEY,
  Student_ID INT,
  Course_ID INT,
  Enrollment_Date DATE,
  Grade DECIMAL(4,2),
  FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID),
  FOREIGN KEY (Course_ID) REFERENCES Courses(Course_ID)
);

-- 3. Insert sample data into Students
INSERT INTO Students (Student_ID, First_Name, Last_Name, Birth_Date, Program) VALUES
(1001, 'Maria', 'Santos', '2002-05-10', 'BSIT'),
(1002, 'Juan', 'Dela Cruz', '2001-08-22', 'BSCS'),
(1003, 'Ana', 'Mendoza', '2003-02-15', 'BSIT'),
(1004, 'Carlo', 'Soriano', '2000-12-05', 'BSIS'),
(1005, 'Liza', 'Manalo', '2004-07-19', 'BSCS');

-- 4. Insert sample data into Courses
INSERT INTO Courses (Course_ID, Course_Name, Units, Department, ) VALUES
(2001, 'Database Management', 3, 'Computer Science'),
(2002, 'Systems Integration', 3, 'Information Technology'),
(2003, 'Networking Fundamentals', 4, 'Information Technology'),
(2004, 'Data Structures', 3, 'Computer Science'),
(2005, 'Web Development', 2, 'Information Technology');

-- 5. Insert sample data into Enrollments
INSERT INTO Enrollments (Enrollment_ID, Student_ID, Course_ID, Enrollment_Date, Grade) VALUES
(3001, 1001, 2002, '2023-02-10', 89.50),
(3002, 1002, 2001, '2023-03-15', 92.00),
(3003, 1003, 2003, '2023-01-20', 84.75),
(3004, 1004, 2005, '2023-06-05', 78.25),
(3005, 1005, 2004, '2023-02-28', 88.00);

-- 6. Alter Courses to add Semester column (task instruction)
ALTER TABLE Courses ADD COLUMN Semester VARCHAR(20);

-- 7. Update the Semester values (based on sample table in the practice file)
UPDATE Courses SET Semester = '1st' WHERE Course_ID IN (2001,2003,2004);
UPDATE Courses SET Semester = '2nd' WHERE Course_ID IN (2002,2005);
