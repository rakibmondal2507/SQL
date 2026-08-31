-- Get two most recent order 

SELECT TOP 2 *
FROM orders
ORDER BY order_date DESC
