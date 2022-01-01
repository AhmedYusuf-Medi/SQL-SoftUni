--Task 9
SELECT grouped.AgeGroups,COUNT(*) AS WizzardsCount
FROM
(
SELECT CASE
WHEN WD.Age BETWEEN 0 AND 10
THEN '[0-10]'
WHEN WD.Age BETWEEN 11 AND 20
THEN '[11-20]'
WHEN WD.Age BETWEEN 21 AND 30
THEN '[21-30]'
WHEN WD.Age BETWEEN 31 AND 40
THEN '[31-40]'
WHEN WD.Age BETWEEN 41 AND 50
THEN '[41-50]'
WHEN WD.Age BETWEEN 51 AND 60
THEN '[51-60]'
WHEN WD.Age >= 61
THEN '[61+]'
ELSE 'N\A'
END AS AgeGroups
FROM WizzardDeposits AS WD
) AS grouped
GROUP BY grouped.AgeGroups; 