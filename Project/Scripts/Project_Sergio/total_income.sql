SELECT SUM(CAST(REPLACE(revenue, '$', '') AS DECIMAL(10,2))) AS total_income
FROM income;
