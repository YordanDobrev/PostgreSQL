CREATE VIEW view_continents_countries_currencies_details
AS
SELECT
	CONCAT(cont.continent_name, ': ', cont.continent_code) AS continent_details,
	CONCAT_WS(' - ', coun.country_name, coun.capital, coun.area_in_sq_km, 'km2') AS country_information,
	CONCAT(curr.description, ' (' ,curr.currency_code,')') AS currencies
FROM
	continents AS cont,
	countries AS coun,
	currencies AS curr
WHERE
	curr.currency_code = coun.currency_code
		AND
	coun.continent_code = cont.continent_code
ORDER BY
	country_information,
	currencies