/* What customer is spending the most money? */
-- SELECT customer_id, SUM(amount) FROM payment
-- GROUP BY customer_id
-- ORDER BY SUM(amount) DESC

/* Use GROUP BY on multiple columns to see how much each customer spent with each staff member*/
-- SELECT customer_id, staff_id, SUM(amount) FROM payment
-- GROUP BY staff_id, customer_id
-- ORDER BY customer_id

/* GROUP BY on date columns */
/* DATE function will remove the timestamp information (minutes, seconds, hours) */
SELECT DATE(payment_date), SUM(amount) FROM payment
GROUP BY DATE(payment_date)
ORDER BY SUM(amount) DESC /* Can see the days where the most or least transactions are done */