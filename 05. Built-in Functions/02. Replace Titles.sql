SELECT
	REPLACE(title, 'The', '***') as title
FROM books
WHERE 
	title LIKE 'The%'