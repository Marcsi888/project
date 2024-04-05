create or replace view final.v_actors_in_movies_rented_by_australian_store as
select distinct actor.first_name, actor.last_name, film.title
from actor 
inner join film_actor fa on actor.actor_id = fa.actor_id
inner join film on fa.film_id= film.film_id
inner join inventory on film.film_id= inventory.film_id
inner join store on inventory.store_id= store.store_id 
inner join address on store.address_id= address.address_id
inner join city on address.city_id = city.city_id
inner join country on country.country_id = country.country_id
where country.country = 'Australia';