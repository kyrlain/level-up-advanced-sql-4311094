SELECT e.employeeId,
  e.firstName,
  e.lastName,
  COUNT(s.salesId) AS SalesCount
FROM sales AS s
INNER JOIN employee AS e
  ON s.employeeId = e.employeeId
GROUP BY s.employeeId
ORDER BY SalesCount DESC, e.lastName ASC;