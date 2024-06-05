CREATE OR REPLACE FUNCTION fn_full_name(VARCHAR, VARCHAR)
RETURNS varchar AS
$$
    DECLARE
        first_name ALIAS FOR $1
        last_name ALIAS FOR $2
        greeting varchar
    BEGIN
        greeting := 'Hello'
        RETURN concat_WS(' ', greeting, $1, $2);
    END;
$$
LANGUAGE plpgsql