SELECT staff_id, COUNT(amount) FROM payment
GROUP BY staff_id