ALTER TABLE `maintanance`
MODIFY COLUMN `apartment_id` INT NOT null;

ALTER TABLE `maintanance`
ADD CONSTRAINT `fk_maintanace_apartment_id`
FOREIGN KEY (`apartment_id`)
REFERENCES `apartment` (`apartment_id`)