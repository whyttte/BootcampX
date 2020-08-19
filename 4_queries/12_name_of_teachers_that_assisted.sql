SELECT DISTINCT teachers.name AS name, cohorts.name AS cohort
FROM cohorts
  JOIN students ON cohort_id = cohorts.id
  JOIN assistance_requests ON student_id = students.id
  JOIN teachers ON teacher_id = teachers.id
WHERE cohorts.name = 'JUL02'
ORDER BY teachers.name;