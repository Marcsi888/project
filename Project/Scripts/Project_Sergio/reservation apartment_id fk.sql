ALTER TABLE `reservation`
MODIFY COLUMN `apartment_id` INT NOT null;

ALTER TABLE `reservation`
ADD CONSTRAINT `fk_reservation_apartment_id`
FOREIGN KEY (`apartment_id`)
REFERENCES `apartment` (`apartment_id`)