SELECT
    CONCAT(c.first_name, ' ', c.last_name) AS coach_full_name,
    CONCAT(p.first_name, ' ', p.last_name) AS player_full_name,
    t.name AS team_name,
    sd.passing,
    sd.shooting,
    sd.speed
FROM
    players_coaches as pc
JOIN
    players as p
ON
    pc.player_id = p.id
JOIN
    coaches as c
ON
    pc.coach_id = c.id
JOIN
    teams as t
ON
    p.team_id = t.id
JOIN
    skills_data as sd
ON
    p.skills_data_id = sd.id
ORDER BY coach_full_name, player_full_name DESC 