SELECT
    ad.name,
    CASE
        WHEN EXTRACT(HOUR FROM cou.start) BETWEEN 6 AND 20 THEN 'Day'
        ELSE 'Night'
    END AS day_time,
    cou.bill,
    cl.full_name,
    c.make,
    c.model,
    cat.name
FROM
    courses AS cou
JOIN
    cars AS c
ON
    cou.car_id = c.id
JOIN
    addresses AS ad
ON
    cou.from_address_id = ad.id
JOIN
    categories AS cat
ON
    c.category_id = cat.id
JOIN
    clients as cl
ON
    cou.client_id = cl.id
ORDER BY cou.id