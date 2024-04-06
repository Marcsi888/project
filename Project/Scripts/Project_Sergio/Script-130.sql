UPDATE total_income
SET 
    price_per_day = CAST(price_per_day AS DECIMAL(10, 2)),
    cleaning_price = CAST(cleaning_price AS DECIMAL(10, 2)),
    revenue = CAST(revenue AS DECIMAL(10, 2)),
    total_income = CAST(total_income AS DECIMAL(10, 2));

