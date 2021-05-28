-- WEEK 2 CHALLENGE : LIMIT AND ORDER BY STATEMENTS

/*1.Provide a list of the 5 shortest films with “G” rating and rental rates ranging from 2.99 to 4.99. 
Show their film ID and title. */

SELECT film_id, title
FROM film
WHERE rating = 'G' AND rental_rate BETWEEN 2.99 AND 4.99
ORDER BY length ASC
LIMIT 5;

/*2. Generate a list of all actors whose last names start with “Jo”. 
Arrange the list in alphabetical order of the last name. If there are customers with the same last name, 
arrange the list further by actor ID. */

SELECT *
FROM actor
WHERE last_name LIKE 'Jo%'
ORDER BY last_name, actor_id;

/*3. Let’s play Words within Words game! Use the city table to find all the cities with words “gas” or “him” 
within the city name. Arrange the list by country ID (with the largest ID number on top). 
Retrieve all attributes.*/

SELECT *
FROM city
WHERE city ILIKE '%gas%' OR 
	  city ILIKE '%him%'
ORDER BY country_id DESC;

/*4. Show the address details of customers whose phone numbers end with “10”, arranged by city ID where they live (in ascending order). Retrieve the address column only.*/

SELECT address
FROM address
WHERE phone LIKE '%10'
ORDER BY city_id;

/*5. The manager asks for a sample of 10 payment transactions (of no particular order) 
that occurred between 8:00:00 AND 17:00:00 on February 16, 2007 in the amount of either 0.99, 4.99 or 8.99. 
Hint: Refer to payment table. You may retrieve all attribute */

SELECT *
FROM payment
WHERE amount IN (0.99, 4.99, 8.99) AND
	  payment_date BETWEEN '2007-02-16 8:00:00' AND '2007-02-16 17:00:00'
LIMIT 10;


