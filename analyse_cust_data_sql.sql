/* Objective is to analyse customer purchase data from a database 
Database includes various information about two DVD rental stores.*/

-- Look at Customer Information using Customer List Table

SELECT *
FROM customer_list
LIMIT 15;

-- Group by countries

SELECT *
FROM customer_list
GROUP BY country
ORDER BY country ASC
LIMIT 15;

-- How many countries are in the list

SELECT country, COUNT(country)
FROM customer_list
GROUP BY country
ORDER BY COUNT(country) DESC;

-- India then China have the highest number of customers 

-- Look at just data from the UK

SELECT *
FROM customer_list
WHERE country = 'United Kingdom';

SELECT city, COUNT(city)
FROM customer_list
WHERE country = 'United Kingdom'
GROUP BY city
ORDER BY COUNT(city) DESC;

-- How many customers are active users

SELECT notes,
    COUNT(notes) AS number_active_users,
    (COUNT(notes) * 100.0 / (SELECT COUNT(*)
    FROM customer_list)) AS percentage
FROM customer_list
GROUP BY notes;


-- there are 584 active users or 97% are active users

-- What is the average payment by customer_id in a given year

/*SELECT payment_date
FROM payment
WHERE payment_date = (SELECT MAX(payment_date) FROM payment) OR payment_date = (SELECT MIN(payment_date) FROM payment);*/

SELECT customer_id, SUM(amount) AS total_amount
FROM payment
GROUP BY customer_id
ORDER BY total_amount DESC;

-- Which customer had the largest payments

-- Customer with ID 526 spent the most - 221.55

-- What do we know about customer 526

SELECT * 
FROM customer
WHERE customer_id = 526;

-- Name: Karl Seal. Active User. At Store_ID 2 and Address_ID 532

SELECT *
FROM customer_list
WHERE id = 526;

-- Combine datasets

SELECT *
FROM customer
JOIN customer_list ON customer.customer_id = customer_list.ID
WHERE customer.customer_id = 526;

-- What is the total revenue?

SELECT SUM(amount) AS total_amount
FROM payment;

-- The total payment amount was 66416

-- Does it differ by year

SELECT SUBSTR(payment_date, 1, 4) AS payment_year, SUM(amount) AS total_amount
FROM payment
GROUP BY payment_year;

-- Yes, there was only 514 paid in 2006 compared to 2005

-- Did payments vary by month in 2005?

SELECT SUBSTR(payment_date, 6, 2) AS month, SUM(amount) AS total_amount
FROM payment
WHERE SUBSTR (payment_date, 1, 4) = '2005'
GROUP BY month;

-- Payments in 2005 between May and August were highest in July and lowest in May.