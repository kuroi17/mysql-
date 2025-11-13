create database if not exists ponce_company;
use ponce_company;

-- create job table
create table if not exists job (
  jobcode varchar(4) primary key,
  jobdescription varchar(50)
);

-- create employee table
create table if not exists employee (
  empnumber varchar(4) primary key,
  emplname varchar(10),
  empfname varchar(10),
  emphireddate date,
  jobcode varchar(4),
  foreign key (jobcode) references job(jobcode)
);

-- create project table
create table if not exists project (
  projectnumber varchar(4) primary key,
  projectname varchar(20),
  projectvalue decimal(11,2),
  empnumber varchar(4),
  foreign key (empnumber) references employee(empnumber)
);

-- insert job records
insert into job (jobcode, jobdescription) values
('J101', 'Programmer'),
('J102', 'Database Designer'),
('J103', 'System Analyst'),
('J104', 'Graphic Designer'),
('J105', 'Database Administrator');

-- insert employee records
insert into employee (empnumber, emplname, empfname, emphireddate, jobcode) values
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

-- insert project records
insert into project (projectnumber, projectname, projectvalue, empnumber) values
('PRO1', 'Botanika', 1500850.00, 'E002'),
('PRO2', 'Evergreen', 1450500.25, 'E003'),
('PRO3', 'Rolling Tide', 805600.15, 'E002'),
('PRO4', 'Cascade', 2950900.00, 'E001'),
('PRO5', 'Quest', 1750000.00, 'E005');
