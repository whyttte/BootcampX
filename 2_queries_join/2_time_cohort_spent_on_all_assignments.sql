SELECT SUM(assignment_submissions.duration) AS time_spent_by_cohort
FROM assignment_submissions 
  JOIN students ON student_id = students.id 
  JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'FEB12';
