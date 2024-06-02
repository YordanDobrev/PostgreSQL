SELECT
    t.town_id,
    t.name as town_name,
    a.address_text
FROM addresses as a
         JOIN towns as t
              USING (town_id)
WHERE t.name in ('San Francisco', 'Sofia', 'Carnation')
ORDER BY t.town_id, address_id