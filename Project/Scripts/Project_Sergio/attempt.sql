INSERT INTO income (reservation_id, price_per_day, amount_of_days, cleaning_price, revenue, total_income)
SELECT 
    r.reservation_id,
    CAST(SUBSTRING(r.price_per_day, 2) AS DECIMAL(10, 2)) AS price_per_day,  
    r.amount_of_days,
    CAST(SUBSTRING(r.cleaning_price, 2) AS DECIMAL(10, 2)) AS cleaning_price,
    CAST(SUBSTRING(i.revenue, 2) AS DECIMAL(10, 2)) AS revenue,
    CAST(SUBSTRING(i.revenue, 2) AS DECIMAL(10, 2)) + (CAST(SUBSTRING(r.price_per_day, 2) AS DECIMAL(10, 2)) * r.amount_of_days) + CAST(SUBSTRING(r.cleaning_price, 2) AS DECIMAL(10, 2)) AS total_income
FROM 
    reservation r
JOIN 
    income i ON r.reservation_id = i.reservation_id;

   