-- Using sakila:
use sakila;

-- Actors with Scarlett name:
select * from actor where first_name = 'Scarlett';

-- Actors with Johansson last name:
select * from actor where last_name = 'Johansson';

-- Available to rent:
select distinct count(inventory_id) from inventory;

-- Short and longest movie rental:
select min(rental_duration) from film;
select max(rental_duration) from film;

-- Longest and shortest duration:
select min(length) as min_duration from film;
select max(length) as max_duration from film;

-- Average movie duration:
select avg(length) as average_duration from film;

-- What's the average movie duration expressed in format (hours, minutes)?
select concat(avg(length) / 60, 'h', avg(length) % 60, 'm') as average_duration_time from film;

-- How many movies longer than 3 hours?
select count(length) as longer_than_3_hours from film 
where length > 60 * 3;

-- Get the name and email formatted:
select concat(first_name, ' ', upper(last_name), ' - ', email) as formated_mail from customer;

-- What's the length of the longest film title?
select max(length) as longest_film from film;
