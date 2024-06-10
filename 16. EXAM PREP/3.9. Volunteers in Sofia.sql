SELECT
    v.name AS volunteers,
    v.phone_number,
    split_part(v.address, ',', 2) AS address
FROM volunteers AS v
JOIN
    volunteers_departments AS vd
ON
    v.department_id = vd.id
WHERE
    v.address like '%Sofia%'
        AND
    vd.department_name = 'Education program assistant'
ORDER BY volunteers