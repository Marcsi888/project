ALTER TABLE `maintanance`
MODIFY COLUMN `building_id` INT NOT null;

ALTER TABLE `maintanance`
ADD CONSTRAINT `fk_maintanance_building_id`
FOREIGN KEY (`building_id`)
REFERENCES `building` (`building_id`)