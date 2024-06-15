SELECT
    p.id AS photo_id,
    p.capture_date,
    p.description,
    COUNT(c.content) AS comments_count
FROM photos AS p
JOIN comments AS c
ON p.id = c.photo_id
GROUP BY p.id, p.capture_date, p.description
HAVING description IS NOT NULL
ORDER BY comments_count DESC, photo_id
LIMIT 3