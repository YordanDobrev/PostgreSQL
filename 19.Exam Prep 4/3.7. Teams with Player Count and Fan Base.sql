SELECT
    t.id AS team_id,
    t.name AS team_name,
    COUNT(p.id) AS player_count,
    fan_base
FROM teams as t
LEFT JOIN players as p
ON t.id = p.team_id
WHERE fan_base > 30000
GROUP BY t.id, t.name, fan_base
ORDER BY player_count DESC, fan_base DESC 
