-- Week 5 - Monday Questions
-- 1. How many actors are there with the last name ‘Wahlberg’?

SELECT COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg';

-- Answer = 2

-- 2. How many payments were made between $3.99 and $5.99?

SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- Answer = 5607

-- 3. What film does the store have the most of? (search in inventory)

SELECT film_id, store_id
FROM inventory
order by film_id DESC;

-- 4. How many customers have the last name ‘William’?

SELECT COUNT(last_name)
FROM customer
WHERE last_name = 'William';

-- Answer 0

-- 5. What store employee (get the id) sold the most rentals?

SELECT staff_id, SUM(amount)
FROM payment
GROUP BY staff_id;

-- staff_id 2

-- 6. How many different district names are there?

SELECT COUNT(DISTINCT district)
FROM address;

-- Answer 378

-- 7. What film has the most actors in it? (use film_actor table and get film_id)

SELECT COUNT(actor_id), film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;

-- film_id 15

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT *
FROM customer

SELECT store_id, last_name
from customer
WHERE store_id = '1' AND last_name LIKE '%es';

-- Answer 13
 
-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
with ids between 380 and 430? (use group by and having > 250)
select *
from payment

SELECT customer_id, SUM(amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY customer_id
HAVING SUM(amount) > 250.00
ORDER BY SUM(amount) DESC;

-- Answer Nobody

-- 10. Within the film table, how many rating categories are there? And what rating has the most movies total?

SELECT COUNT(film_id), title
FROM film
GROUP BY film_id
WHERE (film_id) > 0
ORDER BY COUNT(film_id) DESC;
