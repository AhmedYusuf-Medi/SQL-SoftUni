--CREATE DATABASE [Car Rental];

CREATE TABLE Category
(
[Category Id] INT PRIMARY KEY IDENTITY,
[Category Name] NVARCHAR(50) NOT NULL,
[Daily Rate] TINYINT NOT NULL,
[Weekly Rate] TINYINT NOT NULL,
[Monthly Rate] TINYINT NOT NULL,
[Weekend Rate] TINYINT NOT NULL
);
INSERT INTO Category ([Category Name],[Daily Rate],[Weekly Rate],[Monthly Rate],[Weekend Rate])
VALUES ('Family Cars',6,6,6,6),('Budget Cars',2,4,6,5),('Expensive Cars',4,7,9,6);

--
CREATE TABLE Cars
(
[Car Id] INT PRIMARY KEY IDENTITY,
[Plate Number]  VARCHAR(50) NOT NULL,
Manufacturer VARCHAR(50) NOT NULL,
Model VARCHAR(50) NOT NULL,
[Car Year] INT NOT NULL,
Doors TINYINT NOT NULL,
Picture VARBINARY(MAX),
Condition VARCHAR(50),
Available BIT DEFAULT 1
);
INSERT INTO Cars ([Plate Number],Manufacturer,Model,[Car Year],Doors)
VALUES ('A2M1E5T','AUDI','A4',2001,4),('A1M2E3T','AUDI','A8',2008,4),
('A3M4E5T','OPEL','ASTRA',2001,4)

--
CREATE TABLE Employees
(
[Employee Id] INT PRIMARY KEY IDENTITY,
[First Name]  VARCHAR(50) NOT NULL,
[Last Name] VARCHAR(50) NOT NULL,
Title VARCHAR(50),
Notes VARCHAR(MAX)
)
INSERT INTO Employees([First Name], [Last Name],Title)
VALUES('Amet','Yusuf','Lumberjack'),('Hristian','Hristov','Enginer')
,('Bruce','Wayne','Batman')

--
CREATE TABLE Customers
(
[Customer Id] INT PRIMARY KEY IDENTITY,
[Driver License Number] VARCHAR(50) UNIQUE NOT NULL,
[Full Name] VARCHAR(50) NOT NULL,
[Address] VARCHAR(255),
City VARCHAR(50),
ZIPCode VARCHAR(50),
Notes VARCHAR(MAX)
)
INSERT INTO Customers([Driver License Number],[Full Name])
VALUES ('12312asd','Bruce Wayne'),('ajkdhjaks11','Harry Potter'),
('kgaskda1756','Ragnar Lothbrok')

--
CREATE TABLE [Rental Orders]
(
[Rental Orders Id] INT PRIMARY KEY IDENTITY,
[Employee Id] INT NOT NULL FOREIGN KEY REFERENCES Employees([Employee Id]),
[Customer Id] INT NOT NULL FOREIGN KEY REFERENCES Customers([Customer Id]),
[Car Id] INT NOT NULL FOREIGN KEY REFERENCES Cars([Car Id]),
[Tank Level] NUMERIC(5, 2),
[Kilometrage Start] INT,
[Kilometrage End] INT,
[Total Kilometrage] INT,
[Start Date] DATE NOT NULL,
[End Date] DATE NOT NULL,
[Total Days] INT NOT NULL, 
[Rate Applied] TINYINT,
[Tax Rate] TINYINT,
[Order Status] NVARCHAR(50),
NOTES NVARCHAR(MAX)
);

ALTER TABLE [Rental Orders]
ADD CONSTRAINT [CK_Total Days] CHECK(DATEDIFF(DAY, [Start Date], [End Date]) = [Total Days]);

INSERT INTO [Rental Orders]([Employee Id],[Customer Id],[Car Id],[Start Date],[End Date],[Total Days])
VALUES (1,1,1,'01-01-2010','01-02-2010',1),(2,2,2,'01-01-2010','01-03-2010',2),(3,3,3,'01-01-2010','01-04-2010',3)