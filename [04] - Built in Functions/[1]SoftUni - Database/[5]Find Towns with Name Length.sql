--Task 5
SELECT town.Name
FROM Towns AS town
WHERE LEN(Name) = 5OR LEN(Name) = 6
ORDER BY NAME ASC;