--Task 13
--CREATE DATABASE Movies;

CREATE TABLE Directors
(
[Director Id] INT NOT NULL PRIMARY KEY IDENTITY,
[Director Name] NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX)
);
INSERT INTO Directors([Director Name])
VALUES('Bruce'),('Jake'),('Aress'),('Morpheius'),('Ragnar');

SELECT * FROM Directors;

--
CREATE TABLE Genres
(
[Genres Id] INT NOT NULL PRIMARY KEY IDENTITY,
[Genres Name] NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX)
);
INSERT INTO Genres([Genres Name])
VALUES('Medii'),('Popy'),('Bjorn'),('Robin'),('Clark');

CREATE TABLE Categories
(
[Category Id] INT NOT NULL PRIMARY KEY IDENTITY,
[Category Name] NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX)
);
INSERT INTO Categories([Category Name])
VALUES('Action'),('Comedy'),('Dram'),('History'),('News');

SELECT * FROM Categories;
--
CREATE TABLE Movies
(
[Movie Id] INT NOT NULL PRIMARY KEY IDENTITY,
Title         NVARCHAR(255) NOT NULL,
[Director Id]    INT FOREIGN KEY REFERENCES Directors([Director Id]),
[Copyright Year] INT,
Length        NVARCHAR(50),
[Genres Id]    INT FOREIGN KEY REFERENCES Genres([Genres Id]),
[Category Id]   INT FOREIGN KEY REFERENCES Categories([Category Id]),
Rating        INT,
Notes         NVARCHAR(MAX)
)
INSERT INTO Movies  (Title,[Director Id],[Genres Id] ,[Category Id])
VALUES('Inception',2,3,4),('Justice League',2,3,5),
('Harry Potter',3,4,5),('The Witcher',2,4,5),('Hangover',3,2,1);

SELECT * FROM Movies;

