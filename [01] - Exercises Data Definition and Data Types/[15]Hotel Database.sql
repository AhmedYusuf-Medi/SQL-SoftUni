--CREATE DATABASE Hotel;

CREATE TABLE
Employees
(
[Employee Id] INT PRIMARY KEY IDENTITY,
[First Name] VARCHAR(50) NOT NULL,
[Last Name]  VARCHAR(50) NOT NULL,
Title VARCHAR(100) NOT NULL,
Notes VARCHAR(MAX)
)

INSERT INTO Employees([First Name],[Last Name],Title)
VALUES ('Ahmed','Yusuf','Manager'),('Bruce','Wayne','Team Lead'),('Ragnar','Lothbrok','Boss')

SELECT * FROM Employees
--

CREATE TABLE
Customers
(
[Customer Id] INT PRIMARY KEY IDENTITY,
[First Name] VARCHAR(50) NOT NULL,
[Last Name] VARCHAR(50) NOT NULL,
[Phone Number] VARCHAR(50),
[Emergency Name] VARCHAR(50) NOT NULL,
[Emergency Number] INT NOT NULL,
Notes VARCHAR(50)
)

INSERT INTO Customers([First Name],[Last Name],[Phone Number],[Emergency Name],[Emergency Number])
VALUES ('Client1','LA1','1111','EY1','11'),('Client2','LA2','1112','EY2','12'),('Client3','LA3','1113','EY3','13')

SELECT * FROM Customers
--

CREATE TABLE
[Room Status]
(
[Room Status Id] INT PRIMARY KEY IDENTITY,
[Room Status] VARCHAR(50) NOT NULL,
Notes VARCHAR(MAX)
)

INSERT INTO [Room Status]([Room Status])
VALUES ('Reserved'),('Free'),('Cleaning')

SELECT * FROM [Room Status]
--

CREATE TABLE
[Room Types]
(
[Room Type Id] INT PRIMARY KEY IDENTITY,
[Room Type] VARCHAR(50) NOT NULL,
Notes VARCHAR(MAX)
)

INSERT INTO [Room Types]([Room Type])
VALUES ('Luxory'),('Casual'),('Misery')

SELECT * FROM [Room Types]
--

CREATE TABLE
[Bed Types]
(
[Bed Type Id] INT PRIMARY KEY IDENTITY,
[Bed Type] VARCHAR(50) NOT NULL,
Notes VARCHAR(MAX)
)

INSERT INTO [Bed Types]([Bed Type])
VALUES('Single'),('Double'),('VIP')

SELECT * FROM [Bed Types]
--

CREATE TABLE
Rooms
(
[Room Id] INT PRIMARY KEY IDENTITY,
[Room Type Id] INT FOREIGN KEY REFERENCES [Room Types]([Room Type Id]),
[Bed Type Id] INT FOREIGN KEY REFERENCES [Bed Types]([Bed Type Id]),
Rate INT,
[Room Status Id] INT FOREIGN KEY REFERENCES [Room Status]([Room Status Id]),
Notes VARCHAR(50)
)

INSERT INTO Rooms([Room Type Id],[Bed Type Id],Rate,[Room Status Id])
VALUES(1,1,5,1),(2,2,6,2),(3,3,9,1)

SELECT * FROM Rooms
--

CREATE TABLE
Payments
(
[Payment Id] INT PRIMARY KEY IDENTITY,
[Employee Id] INT FOREIGN KEY REFERENCES [Employees]([Employee Id]),
[Payment Date] DATE NOT NULL,
[Account Number] INT NOT NULL,
[First Date Occupied] DATE NOT NULL,
[Last Date Occupied]  DATE NOT NULL,
[Total Days] INT NOT NULL,
[Amount Charged] DECIMAL(10, 2) NOT NULL,
[Tax Rate] DECIMAL(10, 2) NOT NULL,
[Tax Amount] DECIMAL(10, 2) NOT NULL,
[Payment Total] DECIMAL(10, 2) NOT NULL,
Notes VARCHAR(MAX)
)

ALTER TABLE Payments
ADD CONSTRAINT [Total Days] CHECK(DATEDIFF(DAY, [First Date Occupied], [Last Date Occupied]) = [Total Days]);

ALTER TABLE Payments
ADD CONSTRAINT [Tax Amount] CHECK([Tax Amount] = [Total Days] * [Tax Rate]);

INSERT INTO Payments([Employee Id],[Payment Date],[Account Number],[First Date Occupied],[Last Date Occupied],[Total Days],[Amount Charged],[Tax Rate],[Tax Amount],[Payment Total])
VALUES
(1,'01-01-2000',1,'10-05-2000','10-10-2000', 5,75,50,250,75),
(2,'01-01-2000',2,'10-05-2000','10-10-2000', 5,75,55,275,75),
(3,'01-01-2000',3,'10-05-2000','10-10-2000', 5,75,60,300,75)

SELECT * FROM Payments
--

CREATE TABLE Occupancies
(
[Occupancie Id] INT PRIMARY KEY IDENTITY,
[Employee Id] INT FOREIGN KEY REFERENCES [Employees]([Employee Id]),
[Date Occupied] DATE NOT NULL,
[Account Number] INT NOT NULL,
[Room Id] INT FOREIGN KEY REFERENCES Rooms([Room Id]),
[Rate Applied] DECIMAL(10, 2),
[Phone Charge] VARCHAR(50) NOT NULL,
Notes VARCHAR(MAX)
);

INSERT INTO Occupancies([Employee Id],[Date Occupied],[Account Number],[Room Id],[Phone Charge])
VALUES
(1,'08-24-2012',3,2,'088 88 888 888'),
(2,'06-15-2015',2,3,'088 88 555 555'),
(3,'05-12-1016',1,1,'088 88 555 333')

SELECT * FROM Occupancies

UPDATE Payments
SET [Tax Rate] = [Tax Rate] - ([Tax Rate] * 0.03);

SELECT [Tax Rate]
FROM Payments;

TRUNCATE TABLE Occupancies;