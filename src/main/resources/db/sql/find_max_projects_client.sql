SELECT name, COUNT(project.id) AS project_count
FROM client
         JOIN project ON client.id = project.client_id
GROUP BY client.id
HAVING COUNT(project.id) = (SELECT MAX(project_count)
                            FROM (SELECT COUNT(project.id) AS project_count
                                  FROM project
                                  GROUP BY client_id) AS project_counts);
