--Task 7
SELECT TOP (5) jt.CountryName AS Country,
ISNULL(jt.PeakName, '(no highest peak)') AS HighestPeakName,
ISNULL(jt.Elevation, 0) AS HighestPeakElevation,
ISNULL(jt.MountainRange, '(no mountain)') AS Mountain
FROM
(
SELECT country.CountryName,
DENSE_RANK() OVER(PARTITION BY country.CountryName ORDER BY peak.Elevation DESC) AS PeakRank,
peak.PeakName,
peak.Elevation,
mountain.MountainRange
FROM Countries AS country
LEFT JOIN MountainsCountries AS mc ON country.CountryCode = mc.CountryCode
LEFT JOIN Mountains AS mountain ON mc.MountainId = mountain.Id
LEFT JOIN Peaks AS peak ON mountain.Id = peak.MountainId
) AS jt
WHERE jt.PeakRank = 1
ORDER BY jt.CountryName,
jt.PeakName;