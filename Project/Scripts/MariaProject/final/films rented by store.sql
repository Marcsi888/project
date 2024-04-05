create or replace view final.v_films_rented_the_most AS
select
       f.film_id,
       s.store_id,
       f.title AS film_title,
       c.customer_id,
       concat(c.first_name, ' ', c.last_name) AS customer_name,
       r.rental_date,
       r.return_date,
       p.amount,
       sum(c.customer_id *p.amount) as total_revenue
from rental r
inner join inventory i on r.inventory_id = i.inventory_id
inner join film f on i.film_id = f.film_id
inner join store s ON i.store_id = s.store_id
inner join customer c ON r.customer_id = c.customer_id
inner join payment p on p.amount= p.amount;
