SELECT assignments.id AS id, assignments.name AS name, assignments.day AS day, assignments.chapter AS chapter, COUNT(assistance_requests.*) AS total_requests
FROM assistance_requests
  JOIN assignments ON assignment_id = assignments.id
  JOIN students ON student_id = students.id
GROUP BY assignments.id
ORDER BY total_requests DESC;