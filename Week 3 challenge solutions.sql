-- WEEK 3 CHALLENGE JOINING MULTIPLE TABLES

/*1. Find the top 10 customers who paid the most in a single transaction. Show their customer ID, first name, last name and 
amount paid. Sort the results by amount paid (highest on top) and by customer ID. */

SELECT customer_id, first_name, last_name, amount
FROM customer c
JOIN payment p
USING (customer_id)
ORDER BY 4 DESC, 1
LIMIT 10;

/*2. For the customer named Elizabeth Brown, find all the amounts she paid, the payment dates as well as 
the staff’s first and last name who served her on each transaction. Sort the results by payment date (latest date on top).*/

SELECT amount, payment_date, s.first_name, s.last_name, (amount > 2.99) "Amount > 2.99"
FROM customer c
JOIN payment p
ON c.customer_id = p.customer_id
JOIN staff s
ON p.staff_id = s.staff_id
WHERE c.first_name ='Elizabeth' AND c.last_name = 'Brown'
ORDER BY payment_date DESC;

/*3. Produce a table showing the film ID, title, category name (renamed as category)
and inventory ID of films that do not have any inventory. */
SELECT f.film_id, title, name as category, inventory_id
FROM category c
JOIN film_category fc
ON c.category_id = fc.category_id
JOIN film f
ON fc.film_id = f.film_id
LEFT JOIN inventory i
ON f.film_id = i.film_id
WHERE inventory_id ISNULL;

/*4. Using either left join or right join clause, produce a table that shows the film ID, title, 
language name (renamed as language) and rental date of film IDs ranging from 144 to 149. */

SELECT f.film_id, title, name AS language, rental_date
FROM language l
JOIN film f
ON l.language_id = f.language_id
LEFT JOIN inventory i 
ON f.film_id = i.film_id
LEFT JOIN rental r
ON r.inventory_id = i.inventory_id
WHERE f.film_id BETWEEN 144 AND 149
ORDER BY 1;

/* BONUS Exercise (Optional): Create a table showing the customer ID, email address, city and country of origin of customers. 
Sort by customer ID and limit your results to the first 10 customers.
Question: What’s the country of origin of customer ID no. 1? 
Answer: Japan 
*/
SELECT customer_id, email, g.city, country
FROM customer c
JOIN address a
ON c.address_id = a.address_id
JOIN city g
ON a.city_id = g.city_id
JOIN country y
ON g.country_id = y.country_id
ORDER BY 1
LIMIT 10;









