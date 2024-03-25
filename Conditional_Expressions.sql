-- Conditional Expressions and Procedures

-- General CASE Statement:-
SELECT customer_id, 
CASE
 WHEN (customer_id <= 100) THEN 'Business'
 WHEN (customer_id BETWEEN 100 AND 200) THEN 'Premium'
 ELSE 'Plus'
END AS customer_class
FROM customer;

-- CASE Expression:-
SELECT customer_id, 
CASE customer_id
	WHEN 3 THEN 'winner'
	WHEN 6 THEN 'second'
	ELSE 'third'
END as winner_results
FROM customer;

-- Operations on CASE:-
SELECT 
SUM (CASE rental_rate
		WHEN 0.99 THEN 1
		ELSE 0
END) AS low_priced,
SUM (CASE rental_rate
	  WHEN 2.99 THEN 1
	  ELSE 0
END) AS regular_priced,
SUM (CASE rental_rate
	  WHEN 4.99 THEN 1
	  ELSE 0
END) AS premium_priced
FROM film;


SELECT 
SUM (CASE
		WHEN (replacement_cost <=12) THEN 1
		ELSE 0
END) as low,
SUM (CASE
		WHEN (replacement_cost BETWEEN 12 AND 15) THEN 1
		ELSE 0
END) as medium,
SUM (CASE
		WHEN (replacement_cost BETWEEN 15 AND 20) THEN 1
		ELSE 0
END) as plus,
SUM (CASE
		WHEN (replacement_cost >= 20) THEN 1
		ELSE 0
END) as expensive
FROM film;


-- CASE ASSIGNMENT:-

-- Q1: Find sum of different rating of film
-- Ans: It can resolved by both General CASE and CASE Expression 
SELECT 
SUM (CASE
		WHEN (rating = 'R') THEN 1
		ELSE 0
END) AS r,
SUM (CASE
		WHEN (rating = 'G') THEN 1
		ELSE 0
END) AS g,
SUM (CASE
		WHEN (rating = 'PG') THEN 1
		ELSE 0
END) AS pg,
SUM (CASE
		WHEN (rating = 'NC-17') THEN 1
		ELSE 0
END) AS nc17,
SUM (CASE
		WHEN (rating = 'PG-13') THEN 1
		ELSE 0
END) AS pg13
FROM film;



-- COALESCE Statment:-
SELECT COALESCE(rating)FROM film;


-- CAST Statement:-

-- Normal Syntax CAST operator
SELECT CAST ('7' AS INTEGER) as int_data;

SELECT CAST ('six' AS INTEGER) as int_data;

-- POSTGRESQL CAST Operator Synatx
SELECT '9'::INTEGER;

SELECT 'NINE'::INTEGER;

SELECT (CHAR_LENGTH(CAST(rental_id AS VARCHAR))) FROM rental;


-- VIEW Statement:-
SELECT * FROM customer;

CREATE VIEW customer_view AS(
SELECT first_name, last_name, address FROM customer
INNER JOIN address
ON address.address_id = customer.address_id);

SELECT * FROM customer_view;

ALTER VIEW customer_view RENAME TO name_view;

SELECT * FROM customer_view;

SELECT * FROM name_view;

CREATE OR REPLACE VIEW name_view AS (
	SELECT first_name, last_name, address, email FROM customer
	INNER JOIN address
	ON address.address_id = customer.address_id
);

SELECT * FROM name_view;

DROP VIEW IF EXISTS name_view;

