UPDATE coaches
SET salary = salary * coach_level
WHERE id in
    (
SELECT
    DISTINCT coach_id
FROM players_coaches as pc
JOIN coaches as c
ON pc.coach_id = c.id
WHERE
    LEFT(c.first_name, 1) = 'C');