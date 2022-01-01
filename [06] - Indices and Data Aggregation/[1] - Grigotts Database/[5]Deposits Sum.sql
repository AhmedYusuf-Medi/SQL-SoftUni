--Task 5
SELECT WD.DepositGroup,SUM(WD.DepositAmount) AS [Total Sum]
FROM WizzardDeposits AS WD
GROUP BY WD.DepositGroup; 