--Task 2
CREATE TABLE
Manufacturers
(
[Manufacturer Id] INT PRIMARY KEY IDENTITY,
[Name] VARCHAR(50) NOT NULL,
[Estabilished On] DATETIME
)

INSERT INTO Manufacturers([Name], [Estabilished On])
VALUES('BMW', '07/03/1916'),('Tesla', '01/01/2003'),('Lada', '01/05/1966')

CREATE TABLE
Models
(
[Model Id] INT PRIMARY KEY IDENTITY(100,1),
[Name] VARCHAR(50) NOT NULL,
[Manufacturer Id] INT FOREIGN KEY REFERENCES Manufacturers([Manufacturer Id])
)

INSERT INTO Models([Name], [Manufacturer Id])
VALUES('X1', 1),('i6', 1),('Model S', 2),('Model X', 2),('Model 3', 2),	('Nova', 3)