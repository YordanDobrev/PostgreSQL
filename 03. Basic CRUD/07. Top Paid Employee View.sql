CREATE VIEW top_employee AS
SELECT * FROM employees;

SELECT * FROM top_employee
ORDER BY salary
DESC
LIMIT 1