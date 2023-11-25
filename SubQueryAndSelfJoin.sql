-- Subquery
SELECT title, replacement_cost
FROM film
WHERE replacement_cost >
(SELECT AVG(replacement_cost) FROM film);

-- Subquery with JOIN Operation
SELECT film_id, title
FROM film
WHERE film_id IN
(SELECT inventory.film_id 
FROM rental
INNER JOIN inventory
ON rental.inventory_id = inventory.inventory_id
WHERE return_date BETWEEN '2005-05-26' AND '2005-05-28')
ORDER BY film_id;

-- Subquery with EXISTS() Function
SELECT first_name, last_name 
FROM customer AS c
WHERE EXISTS
(SELECT * 
 FROM payment AS p
 WHERE p.customer_id = c.customer_id
 AND amount > 11);

-- NOT EXISTS
SELECT first_name, last_name 
FROM customer AS c
WHERE NOT EXISTS
(SELECT * 
 FROM payment AS p
 WHERE p.customer_id = c.customer_id
 AND amount > 11);


-- SELF JOIN
SELECT f1.title, f2.title, f1.length
FROM film AS f1
JOIN film AS f2 ON
f1.film_id != f2.film_id
AND f1.length = f2.length;




