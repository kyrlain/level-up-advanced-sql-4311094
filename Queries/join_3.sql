SELECT c.*, s.*
FROM customer AS c
FULL JOIN sales AS s
  ON c.customerId = s.customerId