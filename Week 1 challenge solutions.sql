--WEEK 1 CHALLENGE

/*1. Provide a list of films (their titles, film IDs and ratings) that are NOT rated NC-17.*/

SELECT title, film_id, rating
FROM film
WHERE  NOT rating = 'NC-17';

/*2. Get the addresses and postal codes of customers who live in Michigan district.*/

SELECT address, postal_code
FROM address
WHERE district = 'Michigan';

/*3. Your manager asks for the list of payment transactions between 2007-02-18 00:00:00 
and 2007-02-20 00:00:00. Retrieve the payment ID, customer ID, amount and payment dates. */

SELECT payment_id, customer_id, amount
FROM payment
WHERE payment_date BETWEEN '2007-02-18' AND '2007-02-20';

/*4. Retrieve all available information for customers whose last names are either 
Williams, Taylor or Andrews. */

SELECT *
FROM customer
WHERE last_name = 'Williams' OR last_name = 'Taylor' OR last_name = 'Andrews';
--OR
SELECT *
FROM customer
WHERE last_name IN('Williams', 'Taylor', 'Andrews');

/*5. The manager asks for the rental ID and customer ID of transactions that have
rental date starting May 26, 2005 and return date before May 29, 2005. */

SELECT rental_id, customer_id, rental_date
FROM rental
WHERE rental_date >= '2005-05-26' AND return_date < '2005-05-29';


