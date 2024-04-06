aINSERT INTO total_income (reservation_id, price_per_day, amount_of_days, cleaning_price, revenue, total_income)
SELECT 
    r.reservation_id,
    SUBSTRING(r.price_per_day, 2) AS price_per_day,  
    r.amount_of_days,
    SUBSTRING(r.cleaning_price, 2) AS cleaning_price,
    SUBSTRING(i.revenue, 2) AS revenue,  
    CONCAT('$', (SUBSTRING(r.price_per_day, 2) * r.amount_of_days + SUBSTRING(r.cleaning_price, 2) + SUBSTRING(i.revenue, 2))) AS total_income
FROM 
    reservation r
JOIN 
    income i ON r.reservation_id = i.reservation_id;
