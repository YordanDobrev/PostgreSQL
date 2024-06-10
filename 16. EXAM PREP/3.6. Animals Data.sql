SELECT
    a.name,
    at.animal_type,
    TO_CHAR(a.birthdate, 'DD.MM.YYYY')
FROM animal_types AS at
    JOIN animals as a
        ON at.id = a.animal_type_id
ORDER BY a.name