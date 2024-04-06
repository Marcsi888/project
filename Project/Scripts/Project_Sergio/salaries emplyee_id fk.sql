
ALTER TABLE `salaries`
ADD CONSTRAINT `fk_salaries_employee_id`
FOREIGN KEY (`employee_id`)
REFERENCES `employee` (`employee_id`);
