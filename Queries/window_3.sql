SELECT strftime('%Y-%m', soldDate) AS MonthSold,
  COUNT(*) AS NumSold,
  LAG (COUNT(*), 1, 0 ) OVER calMonth AS LastMonthSold
FROM sales
GROUP BY 1
WINDOW calMonth AS (ORDER BY strftime('%Y-%m', soldDate))
ORDER BY 1