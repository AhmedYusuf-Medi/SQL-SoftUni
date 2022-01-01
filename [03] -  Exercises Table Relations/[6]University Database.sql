--Task 6
CREATE TABLE
Subjects
(
[Subject Id] INT PRIMARY KEY IDENTITY,
[Subject Name] VARCHAR(50) NOT NULL
)

CREATE TABLE
Majors
(
[Major Id] INT PRIMARY KEY IDENTITY,
[Major Name] VARCHAR(50)
)

CREATE TABLE
Students
(
[Student Id] INT PRIMARY KEY IDENTITY,
[Student Number]INT,
[Student Name] VARCHAR(50),
[Major ID] INT FOREIGN KEY REFERENCES Majors([Major Id])
)

CREATE TABLE
Agenda
(
[Student Id] INT FOREIGN KEY REFERENCES Students([Student Id]),
[Subject Id] INT FOREIGN KEY REFERENCES Subjects([Subject Id])
)

CREATE TABLE 
Payments
(
[Payment Id] INT PRIMARY KEY IDENTITY,
[Payment Date] DATE,
[Payment Amount] DECIMAL(10,2),
[Student Id] INT FOREIGN KEY REFERENCES Students([Student Id])
)