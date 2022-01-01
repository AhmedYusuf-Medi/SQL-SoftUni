--Task 7
CREATE FUNCTION ufn_IsWordComprised
(
@setOfLetters NVARCHAR(MAX),
@word         NVARCHAR(MAX)
)
RETURNS BIT
AS
BEGIN
DECLARE @currentIndex INT= 1;
WHILE(@currentIndex <= LEN(@word))
BEGIN
DECLARE @currentLetter CHAR= SUBSTRING(@word, @currentIndex, 1);
IF(CHARINDEX(@currentLetter, @setOfLetters) <= 0)
BEGIN
RETURN 0;
END;
SET @currentIndex+=1;
END;
RETURN 1;
END;