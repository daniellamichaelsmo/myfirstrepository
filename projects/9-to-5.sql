--Explore databases within laborstatisticsDB
/*
SELECT * FROM laborstatisticsDB.dbo.industry
WHERE industry_name LIKE '%banking%';

SELECT SUM(value) as total_employees_2016
FROM annual_2016
WHERE RIGHT (series_id, 2) IN ('01', '25', '26');

SELECT SUM(value) as total_employees_2016
FROM annual_2016
WHERE RIGHT (series_id, 2) = '10';

SELECT * From series
Where series_title = 'Production and nonsupervisory employees'
-- data type code 6

SELECT SUM(value) as total_prod_nonsup_emp_2016
FROM annual_2016
WHERE RIGHT (series_id, 2) = '06';

SELECT * from series
Where series_title = 'Average weekly hours of production and nonsupervisory employees'
--code 7

SELECT AVG(value) as avg_weeklyhrs_prod_nonsup_emp_2017
FROM january_2017
WHERE RIGHT (series_id, 2) = '07';

select * from series
WHERE series_title = 'Aggregate weekly payrolls of production and nonsupervisory employees'
--code 82

Select sum(value) as total_wkly_payroll_prod_nonsup_emp_2017
FROM january_2017
WHERE RIGHT (series_id, 2) = '82'

--07
SELECT
    (SELECT TOP 1 series_id
     FROM january_2017
     WHERE RIGHT(series_id, 2) = '07'
     ORDER BY value DESC) AS max_series_id,
     
    MAX(value) AS max_hours_prod_nonsup_emp_2017,
    
    (SELECT TOP 1 series_id
     FROM january_2017
     WHERE RIGHT(series_id, 2) = '07'
     ORDER BY value ASC) AS min_series_id,
     
    MIN(value) AS min_hours_prod_nonsup_emp_2017
FROM january_2017
WHERE RIGHT(series_id, 2) = '07';

Select industry_code, series_id from series
Where series_id IN ('CES3133635007', 'CEU7071394007');
  
SELECT industry_name, industry_code from industry
WHERE industry_code IN ('31336350', '70713940');
--Motor vehicle power train components	31336350 CES3133635007 49.8
--Fitness and recreational sports centers	70713940 CEU7071394007 16.7

--total weekly payroll for prodcution/nonsup employees
--Jan 2017
--Highest weekly payroll
SELECT TOP 20
    s.industry_code,
    i.industry_name,
    SUM(j.value) AS total_weekly_payroll
FROM january_2017 j
JOIN series s ON j.series_id = s.series_id
JOIN industry i ON s.industry_code = i.industry_code
WHERE RIGHT(j.series_id, 2) = '82'
  AND j.period = 'M01'
GROUP BY s.industry_code, i.industry_name
ORDER BY total_weekly_payroll DESC;

--Lowest weekly payroll
SELECT TOP 10
    s.industry_code,
    i.industry_name,
    SUM(j.value) AS total_weekly_payroll
FROM january_2017 j
JOIN series s ON j.series_id = s.series_id
JOIN industry i ON s.industry_code = i.industry_code
WHERE RIGHT(j.series_id, 2) = '82'
  AND j.period = 'M01'
GROUP BY s.industry_code, i.industry_name
ORDER BY total_weekly_payroll ASC;

SELECT TOP 50 *
FROM annual_2016 a
Join series s
    ON a.series_id = s.series_id
ORDER BY id

SELECT TOP 50 *
From series s
Inner Join datatype d
    ON s.data_type_code = d.data_type_code
ORDER BY s.series_id;

SELECT TOP 50 *
FROM series s
INNER JOIN industry i
    ON s.industry_code = i.industry_code
ORDER BY s.series_id;

SELECT j.series_id, s.industry_code, i.industry_name, j.value
FROM january_2017 j
JOIN series s ON j.series_id = s.series_id
JOIN industry i ON s.industry_code = i.industry_code
WHERE RIGHT(j.series_id,2) = '82'
  AND j.value > (
      SELECT AVG(value)
      FROM annual_2016
      WHERE RIGHT(series_id,2) = '82'
  );

SELECT ROUND(AVG(a.value), 2) AS avg_earnings, '2016' AS year, 'annual' AS period
FROM annual_2016 a
JOIN series s ON a.series_id = s.series_id
WHERE RIGHT(a.series_id, 2) = '30'

UNION ALL

SELECT ROUND(AVG(j.value), 2) AS avg_earnings, '2017' AS year, 'January' AS period
FROM january_2017 j
JOIN series s ON j.series_id = s.series_id
WHERE RIGHT(j.series_id, 2) = '30';
*/
