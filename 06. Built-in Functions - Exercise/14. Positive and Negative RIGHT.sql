SELECT
	peak_name,
	RIGHT(peak_name, 4),
	RIGHT(peak_name, -4)	
FROM
	peaks