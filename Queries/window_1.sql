SELECT e.firstName,
  e.lastName,
  m.model,
  COUNT(s.salesAmount) AS 'NumSales',
  SUM(s.salesAmount) AS 'TotalSales',
  RANK() OVER (
    PARTITION BY e.firstName,
    e.lastName
    ORDER BY SUM(s.salesAmount) DESC
  ) AS 'Ranking'
FROM employee AS e
RIGHT JOIN sales AS s
  ON s.employeeId = e.employeeId
INNER JOIN inventory AS i
  ON i.inventoryId = s.inventoryId
INNER JOIN model AS m
  ON m.modelId = i.modelId
GROUP BY 1, 2, 3;