--Task 3
SELECT country.CountryName, country.ContinentCode,
CASE CurrencyCode WHEN 'EUR' THEN 'Euro' ELSE 'Not Euro'
END AS 'Currency'
FROM Countries AS country
ORDER BY country.CountryName;