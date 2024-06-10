SELECT
    a.name,
    DATE_PART('year', a.birthdate) AS birth_year,
    at.animal_type
FROM animals as a
JOIN
    animal_types as at
ON a.animal_type_id = at.id
WHERE
    a.owner_id IS NULL
        AND
    split_part(AGE('01/01/2022',a.birthdate)::text, ' ' ,1)::INT <= 5
        AND NOT
    animal_type like 'Birds'
ORDER BY name