/* Returns any customers that have not made any payments, or any payments that were not paid by existing customers */
-- SELECT * FROM customer
-- FULL OUTER JOIN payment
-- ON customer.customer_id = payment.customer_id
-- WHERE customer.customer_id IS null
-- OR payment.payment_id IS null

/* A "hacky" way of checking this is to take the counts of both tables, but this isn't 100% accurate as there could 
   exist IDs in one table that aren't in another, or vice versa, that still equal to 599. */
SELECT COUNT(DISTINCT customer_id) FROM payment
SELECT COUNT(DISTINCT customer_id) FROM customer