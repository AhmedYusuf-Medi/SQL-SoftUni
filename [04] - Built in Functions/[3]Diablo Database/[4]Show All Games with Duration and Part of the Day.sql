--Task 4
SELECT Name AS [Game],
       CASE
           WHEN DATEPART(HOUR, game.Start) BETWEEN 0 AND 11
           THEN 'Morning'
           WHEN DATEPART(HOUR, game.Start) BETWEEN 12 AND 17
           THEN 'Afternoon'
           WHEN DATEPART(HOUR, game.Start) BETWEEN 18 AND 23
           THEN 'Evening'
           ELSE 'Out of universe'
       END AS [Part of the Day],
       CASE
           WHEN game.Duration <= 3
           THEN 'Extra Short'
           WHEN game.Duration BETWEEN 4 AND 6
           THEN 'Short'
           WHEN game.Duration > 6
           THEN 'Long'
           WHEN game.Duration IS NULL
           THEN 'Extra Long'
           ELSE 'Exception - must be unreachable case'
       END AS [Duration]
FROM Games AS game
ORDER BY game.Name ,[Duration],[Part of the Day]; 