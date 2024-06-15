CREATE OR REPLACE FUNCTION udf_accounts_photos_count(
    account_username VARCHAR(30)
) RETURNS INT
AS
$$
BEGIN
    RETURN (SELECT
    COUNT(*)
    FROM accounts_photos AS ap
    JOIN accounts AS a
    ON ap.account_id = a.id
    JOIN photos as p
    ON ap.photo_id = p.id
    WHERE username = account_username);
END;
$$
LANGUAGE plpgsql;

SELECT udf_accounts_photos_count('ssantryd') AS photos_count;