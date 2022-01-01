--Task 3
CREATE TABLE
Students
(
[Student Id] INT PRIMARY KEY IDENTITY,
[Student Name] VARCHAR(100) NOT NULL
)

INSERT INTO Students([Student Name])
VALUES('Mila'),('Toni'),('Ron')

CREATE TABLE 
Exams
(
[Exam Id] INT PRIMARY KEY IDENTITY(100,1),
[Exam Name] VARCHAR(MAX) NOT NULL
)

INSERT INTO Exams([Exam Name])
VALUES('SpringMVC'),('Neo4j'),('Oracle 11g')

CREATE TABLE
[Students Exams]
(
[Student Id] INT FOREIGN KEY REFERENCES Students([Student Id]),
[Exam Id] INT FOREIGN KEY REFERENCES Exams([Exam Id])
)

INSERT INTO [Students Exams]([Student Id],[Exam Id])
VALUES (1,101),(1,102),(2,101),(3,103),(2,102),(2,103)