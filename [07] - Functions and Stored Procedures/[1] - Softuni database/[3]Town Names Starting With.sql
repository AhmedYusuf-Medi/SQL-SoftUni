--Task 3
CREATE PROCEDURE usp_GetTownsStartingWith
(
@startsWith NVARCHAR(MAX)
)
AS
BEGIN
SELECT town.Name AS Town
FROM Towns AS town
WHERE town.Name LIKE(@startsWith+'%');
END;