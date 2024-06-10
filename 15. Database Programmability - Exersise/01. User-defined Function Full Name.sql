CREATE OR REPLACE FUNCTION fn_full_name(
    first_name VARCHAR,
    last_name VARCHAR
) RETURNS VARCHAR
AS
$$
    DECLARE
        full_name VARCHAR;
    BEGIN
        SELECT INITCAP(CONCAT(first_name, ' ', last_name)) INTO full_name;
        RETURN full_name;
    END;
$$
LANGUAGE plpgsql;