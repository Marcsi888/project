insert into salaries( employee_id, date_sent, hours_worked, pay_per_hour, total_pay, payment_method)
values
('C2', '5-04-2024', '100', '$10', '$1000','BANK TRANSFER'),
('C3', '5-04-2024', '120', '$11', '$1320', 'CASH'),
('C4', '5-04-2024', '160', '$10', '$1600','BANK TRANSFER'),
('M2', '5-04-2024', '80', '$12', '$960','BANK TRANSFER'),
('M3','5-04-2024', '75', '$14', '$1050','CASH'),
('M4','5-04-2024', '80', '$12', '$960','BANK TRANSFER'),
('S2','5-04-2024', '45', '$8', '$360','BANK TRANSFER'),
('S3', '5-04-2024', '45', '$9', '$405','BANK TRANSFER'),
('S4', '5-04-2024', '45', '$10', '$450','BANK TRANSFER')
ON DUPLICATE KEY UPDATE 
    hours_worked = VALUES(hours_worked),
    pay_per_hour = VALUES(pay_per_hour),
    total_pay = VALUES(total_pay),
    payment_method = VALUES(payment_method);
    