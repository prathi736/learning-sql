-- TIME in SQL
SHOW ALL;

SHOW TIMEZONE;

-- This shows current time and date
SELECT NOW();

-- This shows time, date and day in a string format
SELECT TIMEOFDAY();

-- Shows current time
SELECT CURRENT_TIME;

-- Show current date
SELECT CURRENT_DATE;

-- EXTRACT() Function
SELECT EXTRACT(QUARTER FROM payment_date) AS month
FROM payment;

-- AGE() Function
SELECT AGE(payment_date)
FROM payment;

-- TO_CHAR() Function
SELECT TO_CHAR(payment_date, 'DD-MONTH-YYYY')
FROM payment;

-- Challenge related to Timestamp and Extract:-
-- Q1: Month Payment ocuur
SELECT DISTINCT(TO_CHAR(payment_date, 'MONTH'))
FROM payment;

-- Q2: Payments on Monday
SELECT COUNT(payment_date) 
FROM payment
WHERE (TO_CHAR(payment_date, 'FMDay')) = 'Monday';
-- Another Way
SELECT COUNT(*)
FROM payment
WHERE EXTRACT(dow FROM payment_date) = 1;

-- Math Functions
SELECT ROUND(rental_rate/replacement_cost, 4)*100 AS percentage
FROM film;

-- String Function and Operators
SELECT LENGTH(first_name)
FROM customer;

SELECT UPPER(first_name || ' ' || last_name) AS full_name
FROM customer;

SELECT LOWER(LEFT(first_name,1) || last_name) || '@yahoo.com' 
AS new_email
FROM customer;
