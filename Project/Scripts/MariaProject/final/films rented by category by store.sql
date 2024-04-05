create or replace view final.v_films_rented_by_categories_by_store as
select category.category_id, category.name, store.address_id, address.address
from film_category fc 
inner join category on fc.category_id = category.category_id 
inner join film on fc.film_id = film.film_id
inner join inventory on film.film_id = inventory.film_id 
inner join store on inventory.store_id = store.store_id 
inner join address on store.address_id = address.address_id;