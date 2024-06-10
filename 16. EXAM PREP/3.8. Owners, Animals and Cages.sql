SELECT
    CONCAT(o.name, ' - ', a.name) AS "owners - animals",
    o.phone_number,
    ac.cage_id
FROM animals as a
    JOIN owners as o
        ON a.owner_id = o.id
            JOIN animals_cages as ac
                ON ac.animal_id = a.id
                    JOIN animal_types as at
                        ON a.animal_type_id = at.id
WHERE animal_type = 'Mammals'
ORDER BY o.name, a.name DESC;