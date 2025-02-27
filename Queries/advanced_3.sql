WITH electric AS (
  SELECT i.inventoryId,
    m.EngineType
  FROM inventory AS i
  LEFT JOIN model AS m
    ON i.modelId = m.modelId
  WHERE m.EngineType = 'Electric'
)

SELECT s.*
FROM sales AS s
RIGHT JOIN electric AS e
  ON e.inventoryId = s.inventoryId;

--  why are there null values above


SELECT s.salesId,
  s.soldDate,
  s.salesAmount,
  i.colour,
  i.year
FROM sales AS s
LEFT JOIN inventory AS i
  ON s.inventoryId = i.inventoryId
WHERE i.modelId IN (
  SELECT modelId
  FROM model
  WHERE EngineType = 'Electric'
)