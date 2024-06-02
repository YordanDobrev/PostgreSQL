SELECT
    e.employee_id,
    CONCAT(e.first_name, ' ', e.last_name) as full_name,
    p.project_id,
    p.name
FROM
    employees as e
        JOIN employees_projects as emp
            USING (employee_id)
                JOIN projects as p
                    ON emp.project_id = p.project_id
WHERE p.project_id = 1