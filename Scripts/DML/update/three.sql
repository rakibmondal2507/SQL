-- Update all customer with NULL score by setting their score to 0
UPDATE customers
SET score = 0
WHERE score IS Null

SELECT * FROM customers
