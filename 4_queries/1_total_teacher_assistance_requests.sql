SELECT COUNT(assistance_requests.*) AS total_assistance_requests, teachers.name
FROM teachers 
  JOIN assistance_requests ON teacher_id = teachers.id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY name;