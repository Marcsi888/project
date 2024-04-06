create view apartments_by_zipcode AS
select apartment.apartment_id, apartment.apartment_name, apartment.rooms, apartment.amount_of_people, apartment.double_beds, apartment.single_beds, apartment.exterior_or_interior, building.zipcode 
from apartment 
join building on apartment.building_id = building.building_id;

