INSERT INTO `maintanance` (`maintanance_id`, `employee_id`, `building_id`, `apartment_id`)
VALUES 
(1, 'M1', '1', '1'),
(2, 'M1', '1', '7'), 
(3, 'M2', '4', '14'),
(4, 'M2', '2', '12'),
(5, 'M3', '3', '13'),
(6, 'M3', '2', '11'),
(7, 'M3', '2', '10'),
(8, 'M4', '1','2'),
(9, 'M4', '1', '3'),
(10, 'M1', '1', '4'),
(11, 'M1', '1', '5'),
(12, 'M4', '1', '6'),
(13, 'M4', '1', '8'),
(14, 'M4', '1', '9')
ON DUPLICATE KEY UPDATE 
`employee_id` = VALUES(`employee_id`),
`building_id` = VALUES(`building_id`),
`apartment_id` = VALUES(`apartment_id`);
