CREATE OR REPLACE PROCEDURE udp_modify_account(
    address_street VARCHAR(30),
    address_town VARCHAR(30)
) AS
$$
    BEGIN
        UPDATE
            accounts
        SET
            job_title = CONCAT('(Remote) ', job_title)
        WHERE
            job_title =
            (SELECT
                a.job_title
            FROM accounts AS a
            JOIN addresses AS add
            ON a.id = add.account_id
            WHERE
                add.street = address_street
                    AND
                add.town = address_town);
    END;
$$
LANGUAGE plpgsql;