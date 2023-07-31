SELECT id, datediff(M, start_date, finish_date) AS project_time
FROM project
WHERE datediff(M, start_date, finish_date) = (SELECT (max(datediff(M, start_date, finish_date))) FROM project);
