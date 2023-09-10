SELECT * FROM film;

-- MIN Function
SELECT MIN(rental_duration) FROM film;

-- MAX Function
SELECT MAX(replacement_cost) FROM film;

-- COUNT Function
SELECT COUNT(*) FROM film;

-- AVG Function
SELECT AVG(length) FROM film;

-- ROUND Function
SELECT ROUND(AVG(replacement_cost), 4) FROM film;

-- SUM Function
SELECT SUM(replacement_cost) FROM film;

-- GROUP BY 
SELECT customer_id FROM payment
GROUP BY customer_id;

SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

SELECT customer_id, COUNT(amount) FROM payment
GROUP BY customer_id
ORDER BY COUNT(amount) DESC;

SELECT customer_id, staff_id, SUM(amount) FROM payment	
GROUP BY staff_id, customer_id
ORDER BY customer_id ASC;

SELECT DATE(payment_date), SUM(amount) FROM payment
GROUP BY DATE(payment_date)
ORDER BY SUM(amount) DESC;

-- GROUP BY Challenge
SELECT staff_id, COUNT(amount) FROM payment
GROUP BY staff_id;

SELECT rating, AVG(replacement_cost) FROM film
GROUP BY rating;

SELECT customer_id, SUM(amount) 
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;

-- HAVING
SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 150;

SELECT store_id, COUNT(customer_id) FROM customer
GROUP BY store_id
HAVING COUNT(customer_id) > 300;

-- HAVING Challenge
SELECT customer_id, COUNT(amount) FROM payment
GROUP BY customer_id
HAVING COUNT(amount) >= 40;

SELECT staff_id, customer_id, SUM(amount) FROM payment
WHERE staff_id = 2
GROUP BY staff_id, customer_id
HAVING SUM(amount) > 100;



