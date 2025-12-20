/*
-- which circuit did each race take place at (across all years)?
--circuit table: circuitId, name, year, date
SELECT r.raceId AS race_Id, r.year as race_year, c.name AS circuit_name, r.name AS race_name
FROM dbo.races AS r
INNER JOIN dbo.circuits AS c
ON r.circuitId = c.circuitId

--pitstp: raceId, driverId, stop, lap, time, duration, milliseconds
--race: raceId, year, name

Select r.name AS race_name,
d.forename, + ' ' + d.surname AS winner_name
FROM dbo.results AS res
INNER JOIN dbo.races AS r
ON res.raceId = r.raceId
INNER JOIN dbo.drivers AS d
ON res.driverId = d.driverId
WHERE res.positionOrder = 1
AND r.year = 2021
AND res.position <> '\N'
*/
