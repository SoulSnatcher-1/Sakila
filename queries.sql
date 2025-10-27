/*
Customer Analysis: 
Who are the most valuable customers
*/

SELECT 
customer.first_name,customer.last_name, sum(payment.amount) AS Total_spent
FROM customer
INNER JOIN
payment 
ON customer.customer_id=payment.customer_id
GROUP BY customer.customer_id, customer.first_name, customer.last_name
ORDER BY Total_spent DESC
limit 10;

/*
Inventory Analysis:
What are the most popular film categories?
*/

SELECT 
    category.name AS category_name,
    COUNT(rental.rental_id) AS rental_count
FROM category 
INNER JOIN  
    film_category ON category.category_id = film_category.category_id
INNER JOIN 
    film  ON film_category.film_id = film.film_id
INNER JOIN 
    inventory ON film.film_id = inventory.film_id
INNER JOIN 
    rental rental ON inventory.inventory_id = rental.inventory_id
GROUP BY 
    category.name
ORDER BY 
    rental_count DESC
LIMIT 5;

/*
Inventory Analysis:
What are the most profitable film categories?
*/

SELECT 
    category.name AS category_name,
    SUM(payment.amount) AS total_revenue
FROM 
    category 
INNER JOIN 
    film_category film_category ON category.category_id = film_category.category_id
INNER JOIN 
    film ON film_category.film_id = film.film_id
INNER JOIN 
    inventory ON film.film_id = inventory.film_id
INNER JOIN 
    rental ON inventory.inventory_id = rental.inventory_id
INNER JOIN 
    payment ON rental.rental_id = payment.rental_id
GROUP BY 
    category.name
ORDER BY 
    total_revenue DESC
LIMIT 5;

/*
Performance Analysis:
Which store location is generating more revenue?
*/

SELECT 
    store.store_id,
    address.address,
    city.city,
    country.country,
    SUM(payment.amount) AS total_revenue
FROM 
    store 
JOIN 
    staff ON store.store_id = staff.store_id
JOIN 
    payment ON staff.staff_id = payment.staff_id
JOIN
    address ON store.address_id = address.address_id
JOIN
    city ON address.city_id = city.city_id
JOIN
    country ON city.country_id = country.country_id
GROUP BY 
    store.store_id, address.address, city.city, country.country
ORDER BY 
    total_revenue DESC;

/*
Operational Analysis:
What is the average rental duration?
*/

SELECT 
    AVG(return_date - rental_date) AS average_rental_duration
FROM 
    rental
WHERE 
    return_date IS NOT NULL;

/*
Operational Analysis:
How much does it vary by category?
*/

SELECT 
    category.name AS category_name,
    AVG(rental.return_date - rental.rental_date) AS average_rental_duration
FROM 
    category 
JOIN 
    film_category ON category.category_id = film_category.category_id
JOIN 
    film ON film_category.film_id = film.film_id
JOIN 
    inventory ON film.film_id = inventory.film_id
JOIN 
    rental ON inventory.inventory_id = rental.inventory_id
WHERE 
    rental.return_date IS NOT NULL
GROUP BY 
    category.name
ORDER BY 
    average_rental_duration DESC;
