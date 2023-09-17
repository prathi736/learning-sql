-- AS Statement
SELECT amount AS rental_price
FROM payment;

SELECT COUNT(*) AS num_of_transactions
FROM payment;

SELECT customer_id, SUM(amount) AS total_spent
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100;

-- INNER JOIN
SELECT payment_id, payment.customer_id, first_name
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;

-- OUTER JOIN
SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id;

SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE customer.customer_id IS NULL 
OR payment.customer_id IS NULL;

SELECT COUNT(DISTINCT customer_id) FROM customer;


-- LEFT OUTER JOIN
SELECT film.film_id, title, inventory_id, store_id
FROM film
LEFT OUTER JOIN inventory ON
inventory.film_id = film.film_id;

SELECT film.film_id, title, inventory_id, store_id
FROM film
LEFT OUTER JOIN inventory ON
inventory.film_id = film.film_id
WHERE inventory.film_id IS NULL;

-- RIGHT OUTER JOIN is the opposite of LEFT OUTER JOIN.

-- UNION Operator
-- Example:

-- SELECT * FROM table1
-- UNION
-- SELECT * FROM table2;

-- JOIN Challenges

-- Ques1
SELECT district, email 
FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
WHERE district = 'California';

-- Ques2
-- Here I have combined three tables 
-- With the help of INNER JOIN (Used 2 JOIN operations)
SELECT title, first_name, last_name
FROM film_actor
INNER JOIN film ON
(film.film_id = film_actor.film_id)
INNER JOIN actor ON 
(actor.actor_id = film_actor.actor_id)
WHERE first_name = 'Nick' 
AND last_name = 'Wahlberg';




