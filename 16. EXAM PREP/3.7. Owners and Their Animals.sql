SELECT
    o.name,
    COUNT(*) AS count_of_animals
FROM animals as a
    JOIN owners as o
        ON a.owner_id = o.id
GROUP BY o.name
ORDER BY count_of_animals DESC, o.name
LIMIT 5