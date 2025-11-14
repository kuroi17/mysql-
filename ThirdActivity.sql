-- create and use db
create database if not exists Ponce_LabActivity2;
use Ponce_LabActivity2;

-- create the 3 table

-- job table
create table if not exists Job (
  JobCode varchar(4) primary key,
  JobDescription varchar(25)
);

-- employee table
create table Employee (
  EmpNumber varchar(4) primary key,
  EmpLName varchar(10),
  EmpFName varchar(10),
  EmpHiredDate DATE,
  JobCode varchar(4),
  foreign key (JobCode) references Job(JobCode)
);

-- project table
create table Project (
  ProjectNumber varchar(4) primary key,
  ProjectName varchar(20),
  ProjectValue decimal(11,2),
  EmpNumber varchar(4),
  foreign key (EmpNumber) references Employee(EmpNumber)
);

-- Insert Job Data (fixed unique job codes)
insert into Job (JobCode, JobDescription) values
('J101', 'Programmer'),
('J102', 'Database Designer'),
('J103', 'System Analyst'),
('J104', 'Graphic Designer'),
('J105', 'Database Administrator');

-- Insert Employee Data
INSERT INTO Employee (EmpNumber, EmpLName, EmpFName, EmpHiredDate, JobCode) VALUES
('E001','Santos','Randy','2016-05-10','J101'),
('E002','Garcia','Lucy','2018-02-15','J102'),
('E003','Reyes','Tony','2017-06-25','J102'),
('E004','Martinez','Judy','2019-09-01','J103'),
('E005','Lopez','Harry','2015-12-20','J101'),
('E006','Cruz','Marty','2017-11-20','J103'),
('E007','Dela','Gary','2020-01-10','J102'),
('E008','Velasco','Amy','2017-03-05','J101'),
('E009','Delos','Zach','2014-07-30','J102'),
('E010','Pangilinan','Betsy','2016-10-12','J103');

-- insert project data
INSERT INTO Project (ProjectNumber, ProjectName, ProjectValue, EmpNumber) VALUES
('P001','Dam Upgrade',2000000.00,'E001'),
('P002','Bridge Build',1505000.00,'E002'),
('P003','Road Expansion',1200000.00,'E003'),
('P004','School Construct',900000.00,'E004'),
('P005','Waterworks',1750000.00,'E006'),
('P006','Park Renovate',1100000.00,'E007'),
('P007','Solar Farm',2500000.00,'E008');

-- a) Employees hired after Jan 1, 2017
SELECT * FROM Employee
WHERE EmpHiredDate > '2017-01-01';

-- b) Projects valued over 1,500,000
SELECT * FROM Project
WHERE ProjectValue > 1500000.00;

-- c) Update job code of employee E005 to J103
UPDATE Employee
SET JobCode = 'J103'
WHERE EmpNumber = 'E005';

-- d) Projects between 1,000,000 and 2,000,000
SELECT * FROM Project
WHERE ProjectValue BETWEEN 1000000.00 AND 2000000.00;

-- e) Delete employee E010
DELETE FROM Employee
WHERE EmpNumber = 'E010';

-- f) Employees with job codes J101, J102, J103
SELECT * FROM Employee
WHERE JobCode IN ('J101','J102','J103');

-- g) Employees whose first name ends with 'Y'
SELECT * FROM Employee
WHERE EmpFName LIKE '%y';

-- h) Employees hired in 2017
SELECT * FROM Employee
WHERE EmpHiredDate BETWEEN '2017-01-01' AND '2017-12-31';
