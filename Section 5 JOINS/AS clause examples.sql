/* Basic AS clause example */
-- SELECT COUNT(amount) AS num_transactions FROM payment

/* Example with GROUP BY */
-- SELECT customer_id, SUM(amount) AS total_spent FROM payment
-- GROUP BY customer_id
-- HAVING SUM(amount) > 100

/* Examples that DO NOT work: */
/* You cannot reference a renamed column in WHERE or HAVING statements. 
   This is because the renaming (alias) is not assigned until the very end of the data output. */
-- SELECT customer_id, SUM(amount) AS total_spent FROM payment
-- GROUP BY customer_id
-- HAVING total_spent > 100

SELECT customer_id, amount AS new_name FROM payment
WHERE new_name > 2
