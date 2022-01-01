--Task 1
SELECT country.CountryCode,mountain.MountainRange,peak.PeakName,peak.Elevation
FROM Countries AS country
JOIN MountainsCountries AS mc ON country.CountryCode = mc.CountryCode
JOIN Mountains AS mountain ON mc.MountainId = mountain.Id
JOIN Peaks AS peak ON peak.MountainId = mountain.Id
WHERE country.CountryName = 'Bulgaria' AND peak.Elevation > 2835
ORDER BY peak.Elevation DESC; 