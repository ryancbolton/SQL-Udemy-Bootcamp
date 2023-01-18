SELECT customer_id FROM payment
WHERE amount > 0
ORDER BY payment_date ASC
LIMIT 10;