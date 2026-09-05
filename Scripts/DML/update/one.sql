-- Change the score of customer 6 to 0
UPDATE customers 
SET score = 0
WHERE id = 6

/* SELECT * FROM customers
WHERE id = 6 */
SELECT * FROM customers

--another practice 
UPDATE customers
SET country = 'India'
WHERE id = 7

-- CAUTION : Without a WHERE, all rows will be updated
-- Best Practic: Check with select before running UPDATE to avoid updating the wrong data
