-- Retrive all customers who are not from Germany

SELECT * 
FROM customers
WHERE country != 'Germany'

--notes: <> , != both symbol use to not equal

SELECT * 
FROM customers
WHERE country <> 'Germany'
