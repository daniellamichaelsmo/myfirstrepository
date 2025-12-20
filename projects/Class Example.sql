/*
SELECT COUNT(driverID)
FROM formula_one.dbo.drivers
WHERE nationality = 'British'
*/
/*
Select Count(Distinct driverID)
FROM formula_one.dbo.lap_times
WHERE time < '0:57.0'

Select TOP 10 *
From formula_one.dbo.lap_times


--How many pit stops did each driver take in each race they competed in?
USE formula_one
Select MAX("stop") AS total_pit_stops, raceId, driverId
From pit_stops
GROUP BY raceId, driverId
ORDER BY raceID

--10/13/25 work

SELECT TOP 1 *
FROM dbo.lyft
ORDER BY start_lat DESC


SELECT TOP 1 *
FROM dbo.lyft
ORDER BY start_lat DESC

*/
SELECT 
CONCAT(base_number, ': ', base_name) AS base_name_number
FROM other_FHV_services_jan_aug_2015