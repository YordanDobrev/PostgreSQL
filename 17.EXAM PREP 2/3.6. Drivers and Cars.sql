SELECT
    d.first_name,
    d.last_name,
    c.make,
    c.model,
    c.mileage
FROM
    cars as c
JOIN cars_drivers AS cd
    ON c.id = cd.car_id
JOIN drivers AS d
    ON cd.driver_id = d.id
WHERE mileage IS NOT NULL
ORDER BY mileage DESC, first_name