-- Using SELECT Statement
SELECT * FROM film;

SELECT * FROM address;

-- Select Challenge
SELECT last_name, first_name FROM actor;

SELECT first_name, last_name, email FROM customer;

SELECT * FROM film;

-- Using DISTINCT Keyword with SELECT
SELECT DISTINCT(rental_duration) FROM film;

SELECT DISTINCT(rental_rate) FROM film;

-- Select Distinct Challenge
SELECT * FROM film;

SELECT DISTINCT (rating) FROM film;

-- COUNT function
SELECT * FROM payment;

SELECT COUNT(*) FROM payment;

SELECT COUNT(staff_id) FROM payment;

-- COUNT Function combined with DISTINCT Keyword
SELECT COUNT (DISTINCT customer_id) FROM payment;

-- WHERE Statement
SELECT * FROM customer
WHERE first_name = 'Jared';

SELECT COUNT(*) FROM film
WHERE rental_rate > 4 AND replacement_cost > 20
AND rating = 'PG'AND rental_duration > 4;

SELECT * FROM film
WHERE rating = 'R' OR rating = 'PG-13';

SELECT * FROM film
WHERE rental_rate != 4.99;

-- WHERE Challenge
SELECT * FROM customer
WHERE first_name = 'Nancy';

-- another way
SELECT email FROM customer
WHERE first_name = 'Nancy' AND last_name = 'Thomas';

SELECT description FROM film
WHERE title = 'Outlaw Hanky';

SELECT phone FROM address
WHERE address = '259 Ipoh Drive';

-- ORDER BY Keyword
SELECT * FROM customer
ORDER BY store_id ASC;

SELECT store_id, first_name, last_name FROM customer
ORDER BY store_id DESC, first_name ASC;

-- LIMIT Keyword
SELECT * FROM payment
WHERE amount != 0.00
ORDER BY payment_date DESC
LIMIT 5;

-- ORDER BY Challenge
SELECT customer_id FROM payment
ORDER BY payment_date ASC
LIMIT 10;

SELECT title, length FROM film
ORDER BY length ASC
LIMIT 5;

SELECT COUNT(length) FROM film
WHERE length <= 50;

-- BETWEEN Keyword
SELECT COUNT(*) FROM payment
WHERE amount BETWEEN 8 AND 9;

SELECT COUNT(*) FROM payment
WHERE amount NOT BETWEEN 8 AND 9;

SELECT * FROM payment
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15';

-- IN Operator
SELECT COUNT(*) FROM payment
WHERE amount IN (0.99,1.98,1.99);

SELECT COUNT(*) FROM payment
WHERE amount NOT IN (0.99,1.98,1.99);

SELECT * FROM customer
WHERE first_name IN ('John', 'Tim', 'Julia', 'Amy');

-- LIKE and ILKIE Operators
SELECT * FROM customer
WHERE first_name LIKE 'M%' AND last_name LIKE 'K%';

SELECT * FROM customer
WHERE first_name ILIKE 'm%' AND last_name ILIKE 'c%';

SELECT * FROM customer
WHERE first_name ILIKE '%er%';

SELECT * FROM customer
WHERE first_name ILIKE '_er%';

SELECT * FROM customer
WHERE first_name LIKE 'A%' AND last_name NOT LIKE 'C%'
ORDER BY last_name;


-- General Challenges
SELECT COUNT(amount) FROM payment
WHERE amount > 5.00;

SELECT COUNT(first_name) FROM actor
WHERE first_name ILIKE 'P%';

SELECT COUNT (DISTINCT(district)) FROM address;

SELECT DISTINCT(district) FROM address;

SELECT COUNT(*) FROM film
WHERE rating = 'R' 
AND replacement_cost BETWEEN 5.00 AND 15.00;

SELECT COUNT(*) FROM film
WHERE title ILIKE '%Truman%';
