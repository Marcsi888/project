ALTER TABLE `reservation`
MODIFY COLUMN `customer_id` INT NOT null;

ALTER TABLE `reservation`
ADD CONSTRAINT `fk_reservation_customer_id`
FOREIGN KEY (`customer_id`)
REFERENCES `customer` (`customer_id`)