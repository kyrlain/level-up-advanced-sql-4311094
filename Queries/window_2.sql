SELECT strftime('%Y', soldDate) AS 'Year',
  strftime('%m', soldDate) AS 'Month',
  SUM(salesAmount) AS 'TotalSales',
  SUM(SUM(salesAmount)) OVER (
    PARTITION BY strftime('%Y', soldDate)
    ORDER BY soldDate
    ) AS 'Sum'
FROM sales
GROUP BY 1, 2;