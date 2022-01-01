--Task 1
CREATE TABLE
Passports
(
[Passport Id] INT PRIMARY KEY IDENTITY (101, 1),
[Passport Number] VARCHAR(10) NOT NULL
)

CREATE TABLE
Persons
(
[Person Id] INT PRIMARY KEY IDENTITY,
[First Name] VARCHAR(50) NOT NULL,
Salary DECIMAL(10,2) NOT NULL,
[Passport Id] INT FOREIGN KEY REFERENCES Passports([Passport Id])
)

INSERT INTO Passports ([Passport Number])
VALUES ('N34FG21B'),('K65LO4R7'),('ZE657QP2')

INSERT INTO Persons	([First Name], Salary, [Passport Id])
VALUES('Roberto', 43300.00, 102),('Tom', 56100.00, 103),('Yana', 60200.00, 101)