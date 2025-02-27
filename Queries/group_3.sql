SELECT e.employeeId,
  e.firstName,
  e.lastName,
  MIN(s.salesAmount) AS MinSales,
  MAX(s.salesAmount) AS MaxSales
FROM sales AS s
INNER JOIN employee AS e
  ON s.employeeId = e.employeeId
WHERE s.soldDate >= "2023-01-01"
GROUP BY s.employeeId
HAVING COUNT(*) > 5;