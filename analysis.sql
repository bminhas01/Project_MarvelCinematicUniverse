-- -- ANALYSIS
-- Create a view to use in profit analysis
CREATE VIEW view_profits AS
SELECT title, phase_num, date_part('Year', release_date) as "year", budget, box_office, (box_office - budget) as "profit"
FROM mcu_movies
WHERE box_office IS NOT NULL;

-- 1. Profit by Year
SELECT year, sum(profit) as "total profit"
FROM view_profits
GROUP BY year
ORDER BY year

-- 2. Profit by Phase
SELECT phase_num, sum(profit) as "total profit"
FROM view_profits
GROUP BY phase_num
ORDER BY phase_num

