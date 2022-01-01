--Task 8
SELECT WD.DepositGroup,WD.MagicWandCreator,MIN(WD.DepositCharge) AS MinDepositCharge
FROM WizzardDeposits AS WD
GROUP BY WD.DepositGroup,
         WD.MagicWandCreator
ORDER BY WD.MagicWandCreator,
         WD.DepositGroup; 