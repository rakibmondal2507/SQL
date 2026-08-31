-- Retrive Lowest 2 customer based on the score

SELECT TOP 2* 
FROM customers
ORDER BY score ASC
