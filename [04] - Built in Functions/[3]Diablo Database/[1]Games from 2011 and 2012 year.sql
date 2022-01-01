--Task 1
SELECT TOP 50 game.Name,FORMAT(CAST(game.Start AS DATE), 'yyyy-MM-dd') AS [Start]
FROM Games AS game
WHERE DATEPART(YEAR,game.Start) BETWEEN '2011' AND '2012'
ORDER BY game.Start;