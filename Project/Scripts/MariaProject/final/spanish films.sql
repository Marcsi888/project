create view dvdrental.v_film__spanish as
select language.name as language_name, count(film.film_id) as film_count
from dvdrental.film
inner join dvdrental.language on language.language_id = film.language_id
where language.name = 'Spanish'
group by language.name;
