ALTER TABLE `reservation`
MODIFY COLUMN `building_id` INT NOT null;

ALTER TABLE `reservation`
ADD CONSTRAINT `fk_reservation_building_id`
FOREIGN KEY (`building_id`)
REFERENCES `building` (`building_id`)