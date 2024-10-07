
WITH project_status as(
SELECT 
project_id,
project_name,
project_budget,
project_start_date,
project_end_date,
'upcoming' as status
FROM [upcoming projects]
union all
SELECT 
project_id,
project_name,
project_budget,
project_start_date,
project_end_date,
'completed' as status
FROM completed_projects
)





-- big table
SELECT 
e.employee_id,
e.first_name,
e.last_name,
e.job_title,
e.salary,
d.Department_Name,
pa.project_id,
p.project_name,
p.status,
p.project_budget,
p.project_start_date,
p.project_end_date

FROM employees as e
LEFT JOIN departments as d
on e.department_id = d.Department_ID
JOIN project_assignments as pa
ON pa.employee_id= e.employee_id
JOIN project_status as p
ON p.project_id = pa.project_id

