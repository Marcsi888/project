CREATE VIEW EmployeeSalaries AS
SELECT 
    e.employee_id,
    e.fname,
    e.lname,
    s.date_sent,
    s.hours_worked,
    s.pay_per_hour,
    s.total_pay,
    s.payment_method
FROM 
    employee e
JOIN 
    salaries s ON e.employee_id = s.employee_id;
