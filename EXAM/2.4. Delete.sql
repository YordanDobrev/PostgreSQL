DELETE FROM addresses
WHERE
    id % 2 = 0
        AND
    LOWER(street) like '%r%'