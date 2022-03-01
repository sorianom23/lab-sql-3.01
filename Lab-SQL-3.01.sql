
-- Lab | SQL - Lab 3.01 --

USE sakila;

-- ACTIVITY 1 --

-- 1. Drop column picture from staff.
alter table sakila.staff
drop picture;

select * from sakila.staff;

-- 2. A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.
select * from sakila.staff;
select * from customer where last_name = 'SANDERS';

insert into staff (first_name, last_name, address_id, email, store_id, active, username, password, last_update)
values ('TAMMY', 'SANDERS', 79, 'tammy.sanders@sakilastaff.org', 2, 1, 'Tammy', 'password001', '2022-02-28 12:00:00');

select * from sakila.staff;

delete from sakila.staff
where
	staff_id = 3;
    
select * from sakila.staff;

delete from sakila.staff
where
	staff_id = 4;
    
select * from sakila.staff;

insert into staff (first_name, last_name, address_id, email, store_id, active, username, password, last_update)
values ('Tammy', 'Sanders', 79, 'tammy.sanders@sakilastaff.org', 2, 1, 'Tammy', 'password001', '2022-02-28 12:00:00');

select * from sakila.staff;




-- 3. Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date for the rental_date column in the rental table.
-- Hint: Check the columns in the table rental and see what information you would need to add there. You can query those pieces of information.
-- For eg., you would notice that you need customer_id information as well. To get that you can use the following query:
select * from sakila.film
where title = "ACADEMY DINOSAUR";

select * from sakila.rental;
select * from sakila.customer
where first_name = 'Charlotte';

insert into sakila.rental (rental_date, inventory_id, customer_id, return_date, staff_id, last_update)
values ('2022-02-28 15:07:00',  1, 23, '2022-02-28 15:07:00', 1, '2022-02-28 15:07:00');

select * from sakila.rental
where rental_date = '2022-02-28';



-- ACTIVITY 2 --
-- 1. Use dbdiagram.io or draw.io to propose a new structure for the Sakila database.

-- 2. Define primary keys and foreign keys for the new database.
