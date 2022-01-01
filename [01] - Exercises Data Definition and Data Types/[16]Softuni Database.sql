--CREATE DATABASE	Softuni;

CREATE TABLE 
Towns
(
[Town Id] INT PRIMARY KEY IDENTITY,
[Town Name] VARCHAR(50) NOT NULL
)

CREATE TABLE
Addresses
(
[Address Id] INT PRIMARY KEY IDENTITY,
[Address Text] VARCHAR(50) NOT NULL,
[Town Id] INT FOREIGN KEY REFERENCES Towns([Town Id])
)

CREATE TABLE
Departments
(
[Department Id] INT PRIMARY KEY IDENTITY,
[Department Name] VARCHAR(50) NOT NULL
)

CREATE TABLE
Employees
(
[Employee Id] INT PRIMARY KEY IDENTITY,
[First Name] VARCHAR (50) NOT NULL,
[Middle Name] VARCHAR (50) NOT NULL,
[Last Name] VARCHAR (50) NOT NULL,
[Job Title] VARCHAR(50) NOT NULL,
[Department Id] INT FOREIGN KEY REFERENCES Departments([Department Id]),
[Hire Date] DATE,
Salary DECIMAL(10, 2) NOT NULL,
[Address Id] INT FOREIGN KEY REFERENCES Addresses([Address Id])
)

--
INSERT INTO Towns([Town Name])
VALUES ('Sofia'),('Plovdiv'),('Varna'),('Burgas');
--
INSERT INTO Departments([Department Name])
VALUES('Engineering'),('Sales'),('Marketing'),('Software Development'),('Quality Assurance');
--
INSERT INTO Employees([First Name],[Middle Name],[Last Name],[Job Title],[Department Id],[Hire Date],Salary)
VALUES
('Ivan','Ivanov','Ivanov','.NET Developer',4,CONVERT(DATE, '02/03/2004', 103),3500.00),
('Petar','Petrov','Petrov','Senior Engineer',1,CONVERT(DATE, '02/03/2004', 103),4000.00),
('Maria','Petrova','Ivanova','Intern',5,CONVERT(DATE, '28/08/2016', 103),525.25),
('Georgi','Teziev ','Ivanov','CEO',2,CONVERT(DATE, '09/12/2007', 103),3000.00),
('Peter','Pan ','Pan','Intern',3,CONVERT(DATE, '28/08/2016', 103),599.88);
--
SELECT *
FROM Towns;

SELECT *
FROM Departments;

SELECT *
FROM Employees;

--
SELECT *
FROM Towns
ORDER BY [Town Name] ASC;

SELECT *
FROM Departments
ORDER BY [Department Name] ASC;

SELECT *
FROM Employees
ORDER BY Salary DESC;
--

SELECT town.[Town Name]
FROM Towns as town
ORDER BY town.[Town Name] ASC;

SELECT [department].[Department Name]
FROM Departments as department
ORDER BY [department].[Department Name]ASC;

SELECT CONCAT(employee.[First Name],' ',employee.[Last Name]) as [Full Name],employee.[Job Title],employee.Salary
FROM Employees as employee
ORDER BY Salary DESC;
--

UPDATE Employees
SET
Salary *= 1.10;

SELECT employee.[Salary]
FROM Employees as employee;
