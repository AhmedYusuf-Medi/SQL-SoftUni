--Task 7
CREATE TABLE
People
(
 [People Id] BIGINT PRIMARY KEY IDENTITY,
 [People Name] VARCHAR(50) NOT NULL,
 [Picture] VARBINARY(2),
 [Height]  DECIMAL(5 ,2),
 [Weight]  DECIMAL(5 ,2),
 [GENDER] VARCHAR(1) NOT NULL,
 [Birthdate] DATETIME2(7) NOT NULL,
 [Biography] NVARCHAR(MAX)
)

INSERT INTO 
	People
	([People Name], Picture, Height, Weight, Gender, Birthdate, Biography)
	VALUES 
	('Medi', NULL, 179, 75, 'm', '2001-09-30 14:00:00', 'I''m Juniour Dev.'),
	('Niki', NULL, 160, 49, 'm', '1995-09-08 11:00:00', 'I''m Designer.'),
	('Koceto', NULL, 160, 70, 'm', '1968-12-31 10:00:00', 'I''m Alchohol Spec.'),
	('Kris', NULL, 177, 90, 'm', '1967-11-19 14:00:00', 'I''m Car Mechanic.'),
	('Plamen', NULL, 170, 52, 'm', '1990-09-13 12:00:00', 'I''m a Robot.'),
	('Borislava', NULL, 150, 52, 'f', '1990-09-13 12:00:00', 'I''m Lawyer.')

SELECT * FROM People;