create or replace view final.v_actors_by_film_category as
select distinct actor.actor_id, actor.first_name, actor.last_name, category.category_id, category.name, film.title
from actor 
inner join film_actor on actor.actor_id = film_actor.actor_id
inner join film_category on film_actor.film_id = film_category.film_id
inner join film on film.title = film.title
inner join category on film_category.category_id= category.category_id;
