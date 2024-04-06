CREATE TEMPORARY TABLE buildings_with_exterior_apartments AS
SELECT DISTINCT building.*
FROM building 
JOIN apartment  ON building.building_id = apartment.building_id
WHERE apartment.exterior_or_interior = 'exterior';
