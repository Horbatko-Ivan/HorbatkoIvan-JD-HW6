SELECT project.id                                                                as Name,
       SUM(worker.SALARY * DATEDIFF(m, project.start_date, project.finish_date)) AS project_cost
FROM project
         JOIN project_worker ON project.ID = project_worker.PROJECT_ID
         JOIN worker ON project_worker.WORKER_ID = worker.ID
GROUP BY project.ID
ORDER BY project_cost DESC;
