-- Ponce_Company_CreateTables.sql

CREATE DATABASE IF NOT EXISTS Ponce_Company;
USE Ponce_Company;

-- Create Job table
CREATE TABLE IF NOT EXISTS Job (
  JobCode VARCHAR(4) PRIMARY KEY,
  JobDescription VARCHAR(50)
);

-- Create Employee table
CREATE TABLE IF NOT EXISTS Employee (
  EmpNumber VARCHAR(4) PRIMARY KEY,
  EmpLName VARCHAR(10),
  EmpFName VARCHAR(10),
  EmpHiredDate DATE,
  JobCode VARCHAR(4),
  FOREIGN KEY (JobCode) REFERENCES Job(JobCode)
);

-- Create Project table
CREATE TABLE IF NOT EXISTS Project (
  ProjectNumber VARCHAR(4) PRIMARY KEY,
  ProjectName VARCHAR(20),
  ProjectValue DECIMAL(11,2),
  EmpNumber VARCHAR(4),
  FOREIGN KEY (EmpNumber) REFERENCES Employee(EmpNumber)
);

-- Insert Job Records
INSERT INTO Job (JobCode, JobDescription) VALUES
('J101', 'Programmer'),
('J102', 'Database Designer'),
('J103', 'System Analyst'),
('J104', 'Graphic Designer'),
('J105', 'Database Administrator');

-- Insert Employee Records
INSERT INTO Employee (EmpNumber, EmpLName, EmpFName, EmpHiredDate, JobCode) VALUES
('E001', 'Taylor', 'Mike', '2017-04-24', 'J102'),
('E002', 'Co', 'Lucy', '2018-09-22', 'J103'),
('E003', 'Bell', 'Ashley', '2016-09-14', 'J105'),
('E004', 'Chen', 'Avery', '2018-09-22', 'J101'),
('E005', 'Black', 'Ralph', '2015-04-04', 'J102'),
('E006', 'Collins', 'Kevin', '2017-04-24', 'J101'),
('E007', 'Rogers', 'Dan', '2018-08-18', 'J102'),
('E008', 'Hunt', 'Lori', '2016-05-15', 'J105'),
('E009', 'Ross', 'Kathleen', '2016-08-15', 'J104'),
('E010', 'Bates', 'Kristal', '2017-01-18', 'J103');

-- Insert Project Records
INSERT INTO Project (ProjectNumber, ProjectName, ProjectValue, EmpNumber) VALUES
('PRO1', 'Botanika', 1500850.00, 'E002'),
('PRO2', 'Evergreen', 1450500.25, 'E003'),
('PRO3', 'Rolling Tide', 805600.15, 'E002'),
('PRO4', 'Cascade', 2950900.00, 'E001'),
('PRO5', 'Quest', 1750000.00, 'E005');
