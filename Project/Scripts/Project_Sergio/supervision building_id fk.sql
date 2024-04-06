ALTER TABLE `supervision`
MODIFY COLUMN `building_id` INT NOT null;

ALTER TABLE `supervision`
ADD CONSTRAINT `fk_supervision_building_id`
FOREIGN KEY (`building_id`)
REFERENCES `building` (`building_id`)