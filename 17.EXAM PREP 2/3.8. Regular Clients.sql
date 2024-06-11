SELECT
    cl.full_name,
    COUNT(car_id) AS count_of_cars,
    SUM(cou.bill) AS total_sum
FROM courses AS cou
JOIN clients as cl
    ON cl.id = cou.client_id
WHERE SUBSTR(full_name, 2, 1) = 'a'
GROUP BY cl.full_name
HAVING COUNT(car_id) > 1
ORDER BY full_name