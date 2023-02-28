/* Left Outer Join (same as Left Join) is the most complicated kind of join as it is non-symmetrical. 
   Changing the order of which table comes first WILL change the output. */
/* In this example, we are only seeing values that exist in the left table (film), or exist in both tables.
   You will not see values that only exist in the right table (inventory) */
SELECT film.film_id, title, inventory_id, store_id FROM film
LEFT OUTER JOIN inventory ON
inventory.film_id = film.film_id
WHERE inventory.film_id IS null /* allows you to see which films are not in inventory */