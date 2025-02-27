SELECT e.firstName, 
  e.lastName,
  SUM(CASE strftime('%m', s.soldDate)
    WHEN '01' THEN salesAmount
    END) AS 'JanSales',
  SUM(CASE strftime('%m', s.soldDate)
    WHEN '02' THEN salesAmount
    END) AS 'FebSales',
  SUM(CASE strftime('%m', s.soldDate)
    WHEN '03' THEN salesAmount
    END) AS 'MarSales',
  SUM(CASE strftime('%m', s.soldDate)
    WHEN '04' THEN salesAmount
    END) AS 'AprSales',
  SUM(CASE strftime('%m', s.soldDate)
    WHEN '05' THEN salesAmount
    END) AS 'MaySales',
  SUM(CASE strftime('%m', s.soldDate)
    WHEN '06' THEN salesAmount
    END) AS 'JunSales',
  SUM(CASE strftime('%m', s.soldDate)
    WHEN '07' THEN salesAmount
    END) AS 'JulSales',
  SUM(CASE strftime('%m', s.soldDate)
    WHEN '08' THEN salesAmount
    END) AS 'AugSales',
  SUM(CASE strftime('%m', s.soldDate)
    WHEN '09' THEN salesAmount
    END) AS 'SepSales',
  SUM(CASE strftime('%m', s.soldDate)
    WHEN '10' THEN salesAmount
    END) AS 'OctSales',
  SUM(CASE strftime('%m', s.soldDate)
    WHEN '11' THEN salesAmount
    END) AS 'NovSales',
  SUM(CASE strftime('%m', s.soldDate)
    WHEN '12' THEN salesAmount
    END) AS 'DecSales'
FROM sales AS s
RIGHT JOIN employee AS e
  ON e.employeeId = s.employeeId
WHERE strftime('%Y', s.soldDate) = '2021'
GROUP BY 1, 2
ORDER BY 2,1;