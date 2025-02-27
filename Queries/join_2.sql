SELECT firstName, lastName, title
FROM employee
WHERE employeeId 
NOT IN (
  SELECT employeeID
  FROM sales
  )
AND title = 'Sales Person';

GO

SELECT e.firstName, e.lastName, e.title
FROM employee AS e
LEFT JOIN sales AS s
  ON e.employeeId = s.employeeId
WHERE e.title = 'Sales Person'
AND s.salesId IS NULL;