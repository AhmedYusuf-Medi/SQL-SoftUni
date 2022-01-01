--Task 1
SELECT country.CountryName,country.IsoCode AS [ISO Code]
FROM Countries AS country
WHERE country.CountryName LIKE '%A%A%A%'
ORDER BY country.IsoCode;