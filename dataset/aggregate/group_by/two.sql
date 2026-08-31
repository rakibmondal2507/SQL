-- find total score and total number of customer for each country

SELECT 
 country,
 SUM(score) as total_score,
 COUNT(id) as total_cusomer
 FROM customers
 GROUP BY country
