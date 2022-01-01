CREATE TABLE
Users
(
 [User Id] BIGINT CONSTRAINT PK_Users PRIMARY KEY([User Id]) IDENTITY,
 [User Name] VARCHAR(30) NOT NULL,
 [User Password] VARCHAR(26) NOT NULL,
 [Profile Picture] VARCHAR(MAX),
 [Last Login Time] DATETIME,
 [Is Deleted] bit
)

ALTER TABLE Users
ADD CONSTRAINT PK_Users PRIMARY KEY ([User Id]);

INSERT INTO
Users
	([User Name], [User Password], [Profile Picture],  [Last Login Time] , [Is Deleted])
	VALUES
	('Medi', 'macdonalds', 'https://github.com/AhmedYusuf-Medi', '12/1/2021',0),
	('Medi1', 'macdonalds12', 'https://github.com/AhmedYusuf-Medi', '12/1/2021',0),
	('Medi2', 'macdonalds13', 'https://github.com/AhmedYusuf-Medi', '12/1/2021',0),
	('Medi3', 'macdonalds14', 'https://github.com/AhmedYusuf-Medi', '12/1/2021',0),
	('Medi4', 'macdonalds15', 'https://github.com/AhmedYusuf-Medi', '12/1/2021',0)
