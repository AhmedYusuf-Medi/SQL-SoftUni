--Task 4
SELECT WD.DepositGroup
FROM WizzardDeposits AS WD
GROUP BY WD.DepositGroup
HAVING AVG(WD.MagicWandSize) =
(
    SELECT MIN(WizAverageWandSize.averageWandSize)
    FROM
    (
        SELECT AVG(MagicWandSize) AS averageWandSize
        FROM WizzardDeposits
        GROUP BY DepositGroup
    ) AS WizAverageWandSize
);