-- Change the score 10 to 0 and Update country to 'UK'

UPDATE customers
SET score = 0,
	country = 'UK'
WHERE id = 10

SELECT * FROM customers
