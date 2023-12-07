SELECT * FROM trips;
SELECT * FROM riders;
SELECT * FROM cars;

SELECT *
FROM riders
CROSS JOIN cars;

SELECT *
from trips
LEFT JOIN riders
  ON trips.rider_id = riders.id;

SELECT *
FROM trips
JOIN cars
  ON trips.car_id = cars.id;

SELECT *
FROM riders
UNION
SELECT *
FROM riders;

SELECT ROUND(AVG(cost), 2)
FROM trips;

SELECT first, last
FROM riders
WHERE total_trips < 500;

SELECT * 
FROM cars
WHERE status = 'active';

SELECT *
FROM cars
ORDER BY trips_completed DESC
LIMIT 2;
