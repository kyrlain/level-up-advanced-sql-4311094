SELECT strftime('%Y', soldDate) AS 'Year', 
  SUM(salesAmount) AS 'Total'
FROM sales
GROUP BY strftime('%Y', soldDate)
ORDER BY soldDate;