SELECT COUNT(assistance_requests.*) AS total_assistance_requests, students.name
FROM students
  JOIN assistance_requests ON student_id = students.id
WHERE students.name = 'Elliot Dickinson'
GROUP BY name;