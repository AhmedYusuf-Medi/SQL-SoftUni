--Тask 4
CREATE TABLE 
Teachers
(
[Teacher Id] INT PRIMARY KEY IDENTITY(101,1),
[Teacher Name] VARCHAR(50),
[Manager Id] INT REFERENCES Teachers([Teacher Id])
)

INSERT INTO Teachers([Teacher Name], [Manager Id])
VALUES('John', NULL),('Maya', 106),('Silvia', 106),
   	  ('Ted', 105),('Mark', 101),('Greta', 101)