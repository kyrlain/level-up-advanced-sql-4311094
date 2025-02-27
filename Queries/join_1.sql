SELECT 
  e.firstName, 
  e.lastName,
  e.title,
  m.firstName AS managerFirstName,
  m.lastName AS managerLastName
FROM employee AS e
LEFT JOIN employee as m
ON e.managerId = m.employeeId;