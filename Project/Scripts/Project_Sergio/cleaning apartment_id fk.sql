ALTER TABLE `cleaning`
MODIFY COLUMN `apartment_id` INT NOT null;

ALTER TABLE `cleaning`
ADD CONSTRAINT `fk_cleaning_apartment_id`
FOREIGN KEY (`apartment_id`)
REFERENCES `apartment` (`apartment_id`)